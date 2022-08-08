/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2022-07-30     Ess       the first version
 */

#include "humiture.h"


int humiture_init(void)
{
    struct rt_sensor_config cfg;
    cfg.intf.dev_name  = AHT10_I2C_BUS;
    cfg.intf.user_data = (void *)AHT10_I2C_ADDR;
    rt_hw_aht10_init("aht10", &cfg);
    return RT_EOK;
}

rt_uint32_t temperature_get(void)
{
    struct rt_sensor_data data;
    _temp_dev = rt_device_find(TEMP_DEVICE_NAME);
    if(_temp_dev == RT_NULL)
        rt_kprintf("find %s device failed.\r\n", TEMP_DEVICE_NAME);
    else
        rt_device_open(_temp_dev, RT_DEVICE_FLAG_RDONLY);

    while(_temp_dev == RT_NULL);
    if (rt_device_read(_temp_dev, 0, &data, 1) == 1)
//        printf("temp:%3d.%d°C\r\n",data.data.temp / 10,(rt_uint32_t)data.data.temp % 10);
        return (rt_uint32_t)data.data.temp;
}

rt_uint32_t humidity_get(void)
{
    struct rt_sensor_data data;
    _humi_dev = rt_device_find(HUMI_DEVICE_NAME);
    if(_humi_dev == RT_NULL)
        rt_kprintf("find %s device failed.\r\n", HUMI_DEVICE_NAME);
    else
        rt_device_open(_humi_dev, RT_DEVICE_FLAG_RDONLY);

    while(_humi_dev == RT_NULL);
    if (rt_device_read(_humi_dev, 0, &data, 1) == 1)
//        printf("humi:%3d.%d%%\r\n", data.data.humi / 10,data.data.humi % 10);
        return (rt_uint32_t)data.data.humi;
}



