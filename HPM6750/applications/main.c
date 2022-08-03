/*
 * Copyright (c) 2021 hpmicro
 *
 * Change Logs:
 * Date         Author          Notes
 * 2021-08-13   Fan YANG        first version
 *
 */

/*
*************************************************************************
*                             头文件声明
*************************************************************************
*/
#include <rtthread.h>
#include <rtdevice.h>
#include "rtt_board.h"

#include "OLED.h"
#include "humiture.h"
#include "webclient_get.h"
#include "ntp.h"
#include "onenet.h"

/*
*************************************************************************
*                                变量
*************************************************************************
*/
static rt_thread_t realtime_thread = RT_NULL;
static rt_thread_t humiture_thread = RT_NULL;
static rt_thread_t onenet_thread  = RT_NULL;
static rt_thread_t weather_thread  = RT_NULL;
static rt_thread_t display_thread  = RT_NULL;

static rt_mutex_t sync_mux =RT_NULL;

/*
*************************************************************************
*                              全局变量
*************************************************************************
*/
rt_uint32_t aht10_temp;
rt_uint32_t aht10_humi;

rt_uint32_t RTC_year,RTC_day,RTC_hour,RTC_min,RTC_sec;
rt_uint8_t *RTC_mon,*RTC_week;

rt_uint8_t location[] = "China";
rt_uint8_t weather[] = "Loading";
rt_uint8_t temperature[] = "00";
/*
*************************************************************************
*                               函数声明
*************************************************************************
*/
void realtime_thread_entry(void *arg);
void humiture_thread_entry(void *arg);
void onenet_thread_entry(void *arg);
void weather_thread_entry(void *arg);
void display_thread_entry(void *arg);
/*
*************************************************************************
*                              main 函数
*************************************************************************
*/
int main(void)
{
    sync_mux = rt_mutex_create("sync_mux", RT_IPC_FLAG_PRIO);

    realtime_thread = rt_thread_create("realtime",
                                       realtime_thread_entry,
                                       RT_NULL,
                                       2048,
                                       3,
                                       100);
    if (realtime_thread != RT_NULL)
        rt_thread_startup(realtime_thread);

    humiture_thread = rt_thread_create("humiture",
                                       humiture_thread_entry,
                                       RT_NULL,
                                       2048,
                                       7,
                                       100);
    if (humiture_thread != RT_NULL)
        rt_thread_startup(humiture_thread);

    onenet_thread = rt_thread_create("onenet",
                                      onenet_thread_entry,
                                      RT_NULL,
                                      2048,
                                      9,
                                      100);
    if (onenet_thread != RT_NULL)
        rt_thread_startup(onenet_thread);

    weather_thread = rt_thread_create("weather",
                                      weather_thread_entry,
                                      RT_NULL,
                                      2048,
                                      12,
                                      100);
    if (weather_thread != RT_NULL)
        rt_thread_startup(weather_thread);

    display_thread = rt_thread_create("display",
                                      display_thread_entry,
                                      RT_NULL,
                                      4096,
                                      5,
                                      100);
    if (display_thread != RT_NULL)
        rt_thread_startup(display_thread);

    return 0;
}


/*
*************************************************************************
*                              线程定义
*************************************************************************
*/

void realtime_thread_entry(void *arg)
{
    rt_uint8_t *days[] = {"Sun","Mon","Tue","Wed","Thu","Fri","Sat"};
    rt_uint8_t *months[] = {"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"};
    /* output current time */
    struct tm now_tm = {0};
    while(1)
    {
        rt_mutex_take(sync_mux, RT_WAITING_FOREVER);

        time_t now = time(RT_NULL);
        localtime_r(&now, &now_tm);
        RTC_year = 1900 + now_tm.tm_year;
        RTC_mon = months[now_tm.tm_mon];
        RTC_day = now_tm.tm_mday;
        RTC_hour = now_tm.tm_hour;
        RTC_min = now_tm.tm_min;
        RTC_sec = now_tm.tm_sec;
        RTC_week = days[now_tm.tm_wday];

        rt_mutex_release(sync_mux);

        rt_thread_mdelay(100);
    }
}

void humiture_thread_entry(void *arg)
{
    humiture_init();
    while(1)
    {
        aht10_temp = temperature_get();
        aht10_humi = humidity_get();
        rt_thread_mdelay(10000);
    }
}

void onenet_thread_entry(void *arg)
{
    rt_thread_mdelay(10000);
    onenet_mqtt_init();
    while(1)
    {
        rt_thread_delay(rt_tick_from_millisecond(5 * 1000));
        onenet_mqtt_upload_digit("temperature", (double)aht10_temp/10);
        rt_thread_delay(rt_tick_from_millisecond(5 * 1000));
        onenet_mqtt_upload_digit("humidity", (double)aht10_humi/10);
        rt_thread_delay(50000);
    }
}


void weather_thread_entry(void *arg)
{
    rt_thread_mdelay(5000);
    rt_uint8_t *buffer;
    cJSON *json,*arrayItem,*object,*subobject,*item;
    rt_uint32_t size;
    while(1)
    {
        buffer = webclient_get_weather();
        json = cJSON_Parse(buffer);//解析JSON数据包
        web_free(buffer);
        if(json == NULL)          //检测JSON数据包是否存在语法上的错误，返回NULL表示数据包无效
        {
            rt_kprintf("Error before: [%s]\r\n",cJSON_GetErrorPtr()); //打印数据包语法错误的位置
        }
        else
        {
            if((arrayItem = cJSON_GetObjectItem(json,"results")) != NULL); //匹配字符串"results",获取数组内容
            {
                size = cJSON_GetArraySize(arrayItem);     //获取数组中对象个数
                rt_kprintf("cJSON_GetArraySize: size=%d\n",size);

                if((object = cJSON_GetArrayItem(arrayItem,0)) != NULL)//获取父对象内容
                {
                    if((subobject = cJSON_GetObjectItem(object,"location")) != NULL)
                    {
                        if((item = cJSON_GetObjectItem(subobject,"name")) != NULL) //地名--需要用到的数据
                        {
                            strcpy(location,item->valuestring);
                        }
                    }
                    if((subobject = cJSON_GetObjectItem(object,"now")) != NULL)
                    {
                        if((item = cJSON_GetObjectItem(subobject,"text")) != NULL)//天气预报文字--需要用到的数据
                        {
                            strcpy(weather,item->valuestring);

                        }
                        if((item = cJSON_GetObjectItem(subobject,"temperature")) != NULL) //温度--需要用到的数据
                        {
                            strcpy(temperature,item->valuestring);
                        }
                    }
                    rt_kprintf("当前所在地区：%s  天气：%s  气温：%s°C\r\n",location,weather,temperature);
                }
            }
        }
        cJSON_Delete(json); //释放cJSON_Parse()分配出来的内存空间
        rt_thread_mdelay(300000);
    }
}

void display_thread_entry(void *arg)
{
    rt_uint8_t temp[2],humi[2];
    rt_uint8_t hour[2],min[2],sec[2];
    rt_uint8_t date[15];
    while(1)
    {
        rt_mutex_take(sync_mux, RT_WAITING_FOREVER);

        if(RTC_day < 10) sprintf(date,"%d %s %d  %s",RTC_year,RTC_mon,RTC_day,RTC_week);
        else sprintf(date,"%d %s %d %s",RTC_year,RTC_mon,RTC_day,RTC_week);
//        itoa(RTC_year,year,10);
//        itoa(RTC_day,day,10);
        if(RTC_hour < 10) sprintf(hour,"0%d",RTC_hour);
        else sprintf(hour,"%d",RTC_hour);
        if(RTC_min < 10) sprintf(min,"0%d",RTC_min);
        else sprintf(min,"%d",RTC_min);
        if(RTC_sec < 10) sprintf(sec,"0%d",RTC_sec);
        else sprintf(sec,"%d",RTC_sec);
//        itoa(RTC_hour,hour,10);
//        itoa(RTC_min,min,10);
//        itoa(RTC_sec,sec,10);

        sprintf(temp,"%dC",aht10_temp/10);
        sprintf(humi,"%d%%",aht10_humi/10);
//        itoa((rt_uint32_t),temp,10);
//        itoa((rt_uint32_t)aht10_humi/10,humi,10);

        oled_display(date,hour,min,sec,temp,humi,location,weather,temperature);

        rt_mutex_release(sync_mux);

        rt_thread_mdelay(500);
    }
}


/********************************END OF FILE****************************/


