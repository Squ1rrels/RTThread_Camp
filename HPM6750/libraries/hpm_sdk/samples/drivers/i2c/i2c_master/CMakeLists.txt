# Copyright 2021 hpmicro
# SPDX-License-Identifier: BSD-3-Clause

cmake_minimum_required(VERSION 3.13)

set(CONFIG_TOUCH "ft5406")
find_package(hpm-sdk REQUIRED HINTS $ENV{HPM_SDK_BASE})

project(i2c_example)

sdk_app_src(src/i2c.c)
generate_ses_project()
