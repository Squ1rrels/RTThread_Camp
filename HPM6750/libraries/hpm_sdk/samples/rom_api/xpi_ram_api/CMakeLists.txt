# Copyright 2021 hpmicro
# SPDX-License-Identifier: BSD-3-Clause

cmake_minimum_required(VERSION 3.13)

find_package(hpm-sdk REQUIRED HINTS $ENV{HPM_SDK_BASE})

project(xpi_ram_api_demo)

sdk_app_src(src/xpi_ram_api_demo.c)
generate_ses_project()
