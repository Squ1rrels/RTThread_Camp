/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2022-07-30     Ess       the first version
 */
#ifndef APPLICATIONS_HUMITURE_H_
#define APPLICATIONS_HUMITURE_H_

#include <rtthread.h>
#include <rtdevice.h>
#include "rtt_board.h"


//-----------------------------i2c-----------------------------------
#include <stdio.h>
#include <sys/time.h>
#include "sensor_asair_aht10.h"

#define AHT10_I2C_BUS  "i2c3"

#define HUMI_DEVICE_NAME    "humi_aht"
#define TEMP_DEVICE_NAME    "temp_aht"
//-------------------------------------------------------------------


static rt_device_t _humi_dev = RT_NULL;
static rt_device_t _temp_dev = RT_NULL;



int humiture_init(void);
rt_uint32_t temperature_get(void);
rt_uint32_t humidity_get(void);


#endif /* APPLICATIONS_HUMITURE_H_ */
