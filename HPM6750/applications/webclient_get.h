/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2022-07-30     Ess       the first version
 */
#ifndef APPLICATIONS_WEBCLIENT_GET_H_
#define APPLICATIONS_WEBCLIENT_GET_H_

#include <rtthread.h>
#include <webclient.h>
#include "cJSON.h"

#define GET_HEADER_BUFSZ               1024
#define GET_RESP_BUFSZ                 1024

#define GET_LOCAL_URI                  "http://api.seniverse.com/v3/weather/now.json?key=SFhNHk7UhwlsbRToP&location=福州&language=en&unit=c"

static unsigned char* webclient_get_comm(const char *uri);
unsigned char* webclient_get_weather();

#endif /* APPLICATIONS_WEBCLIENT_GET_H_ */
