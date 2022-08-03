/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2022-07-30     Ess       the first version
 */
#ifndef APPLICATIONS_OLED_H_
#define APPLICATIONS_OLED_H_

#include <rthw.h>
#include <rtthread.h>
#include <rtdevice.h>
#include <u8g2_port.h>

#define OLED_I2C_PIN_SCL                    115  // PD19
#define OLED_I2C_PIN_SDA                    116  // PD20

#define check_sunny             (strcmp(weather,"Sunny") && strcmp(weather,"Hot"))
#define check_clear             (strcmp(weather,"Clear"))
#define check_overcast          (strcmp(weather,"Overcast"))
#define check_thunder           (strcmp(weather,"Thundershower") && strcmp(weather,"Thundershower with hail"))
#define check_cloudy            (strcmp(weather,"Cloudy") && strcmp(weather,"Partly cloudy") && strcmp(weather,"Mostly cloudy"))
#define check_snowy             (strcmp(weather,"Sleet") && strcmp(weather,"Snow flurry") && strcmp(weather,"Light snow") && \
                                 strcmp(weather,"Moderate snow") && strcmp(weather,"Heavy snow") && strcmp(weather,"Snowstorm"))
#define check_rainy             (strcmp(weather,"Shower") && strcmp(weather,"Light rain") && strcmp(weather,"Moderate rain") && \
                                 strcmp(weather,"Heavy rain") && strcmp(weather,"Storm") && strcmp(weather,"Heavy storm") && \
                                 strcmp(weather,"Severe storm") && strcmp(weather,"Ice rain"))

void oled_dispaly();

#endif /* APPLICATIONS_OLED_H_ */
