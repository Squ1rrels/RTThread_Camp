/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2022-07-30     Ess       the first version
 */
#include "OLED.h"


void oled_display(char *date,char *hour,char *min,char *sec,char *temp,char *humi,char *location,char *weather,char *temperature)
{
    u8g2_t u8g2;
    // Initialization
    u8g2_Setup_ssd1306_i2c_128x64_noname_f( &u8g2, U8G2_R0, u8x8_byte_sw_i2c, u8x8_gpio_and_delay_rtthread);
    u8x8_SetPin(u8g2_GetU8x8(&u8g2), U8X8_PIN_I2C_CLOCK, OLED_I2C_PIN_SCL);
    u8x8_SetPin(u8g2_GetU8x8(&u8g2), U8X8_PIN_I2C_DATA, OLED_I2C_PIN_SDA);

    u8g2_InitDisplay(&u8g2);
    u8g2_SetPowerSave(&u8g2, 0);

    // Draw Graphics
    /* full buffer example, setup procedure ends in _f */
    u8g2_ClearBuffer(&u8g2);
    u8g2_SetFont(&u8g2, u8g2_font_ncenR08_tr);
    u8g2_DrawStr(&u8g2, 1, 8, date);

    u8g2_SetFont(&u8g2, u8g2_font_open_iconic_www_1x_t);
    u8g2_DrawGlyph(&u8g2, 81, 9, 0x0047 );
    u8g2_SetFont(&u8g2, u8g2_font_ncenR08_tr);
    u8g2_DrawStr(&u8g2, 90, 8, location);
//    rt_kprintf(location);

    u8g2_SetFont(&u8g2, u8g2_font_ncenB24_tr);
    u8g2_DrawStr(&u8g2, 1, 37, hour);
    u8g2_DrawStr(&u8g2, 39, 34, ":");
    u8g2_DrawStr(&u8g2, 50, 37, min);
    u8g2_SetFont(&u8g2, u8g2_font_ncenB18_tr);
    u8g2_DrawStr(&u8g2, 92, 37, sec);

    u8g2_SetFont(&u8g2, u8g2_font_open_iconic_all_2x_t);
    if(check_sunny == 0){
        u8g2_DrawGlyph(&u8g2, 0, 59, 0x0103 );
        u8g2_SetFont(&u8g2, u8g2_font_ncenR08_tr);
        u8g2_DrawStr(&u8g2, 19, 62, weather);}
    else if(check_clear == 0){
        u8g2_DrawGlyph(&u8g2, 0, 59, 0x00df );
        u8g2_SetFont(&u8g2, u8g2_font_ncenR08_tr);
        u8g2_DrawStr(&u8g2, 19, 62, weather);}
    else if(check_overcast != 0){
        u8g2_DrawGlyph(&u8g2, 0, 59, 0x007c );
        u8g2_SetFont(&u8g2, u8g2_font_timR08_tf);
        u8g2_DrawStr(&u8g2, 19, 62, "Overcast");}
    else if(check_thunder == 0){
        u8g2_DrawGlyph(&u8g2, 2, 60, 0x0060 );
        u8g2_SetFont(&u8g2, u8g2_font_timR08_tf);
        u8g2_DrawStr(&u8g2, 19, 62, "Thunder");}
    else if(check_cloudy == 0){
        u8g2_DrawGlyph(&u8g2, 0, 59, 0x007f );
        u8g2_SetFont(&u8g2, u8g2_font_ncenR08_tr);
        u8g2_DrawStr(&u8g2, 19, 62, "Cloudy");}
    else if(check_rainy == 0){
        u8g2_DrawGlyph(&u8g2, 0, 59, 0x00f1 );
        u8g2_SetFont(&u8g2, u8g2_font_ncenR08_tr);
        u8g2_DrawStr(&u8g2, 19, 62, "Rainy");}
    else if(check_snowy == 0){
        u8g2_DrawGlyph(&u8g2, 0, 59, 0x0081 );
        u8g2_SetFont(&u8g2, u8g2_font_ncenR08_tr);
        u8g2_DrawStr(&u8g2, 19, 62, "Snowy");}
    else{
        u8g2_DrawGlyph(&u8g2, 0, 59, 0x00cf );
        u8g2_SetFont(&u8g2, u8g2_font_timR08_tf);
        u8g2_DrawStr(&u8g2, 19, 62, weather);}

    u8g2_SetFont(&u8g2, u8g2_font_ncenR08_tr);
    u8g2_DrawStr(&u8g2, 19, 50, temperature);
    u8g2_DrawStr(&u8g2, 29, 50, " C");

    u8g2_SetFont(&u8g2, u8g2_font_streamline_weather_t);
    u8g2_DrawGlyph(&u8g2, 54, 63, 0x0036 );
    u8g2_SetFont(&u8g2, u8g2_font_ncenR08_tr);
    u8g2_DrawStr(&u8g2, 74, 57,  temp);
//    u8g2_DrawStr(&u8g2, 84, 57,  "C");

    u8g2_SetFont(&u8g2, u8g2_font_open_iconic_thing_2x_t);
    u8g2_DrawGlyph(&u8g2, 93, 60, 0x0048 );
    u8g2_SetFont(&u8g2, u8g2_font_ncenR08_tr);
    u8g2_DrawStr(&u8g2, 110, 57, humi);
//    u8g2_DrawStr(&u8g2, 120, 57,  "%");

    u8g2_SendBuffer(&u8g2);

}
