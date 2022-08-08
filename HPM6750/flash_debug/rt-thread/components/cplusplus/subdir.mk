################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/components/cplusplus/cxx_crt_init.c 

CPP_SRCS += \
../rt-thread/components/cplusplus/cxx_Mutex.cpp \
../rt-thread/components/cplusplus/cxx_Semaphore.cpp \
../rt-thread/components/cplusplus/cxx_Thread.cpp \
../rt-thread/components/cplusplus/cxx_crt.cpp 

C_DEPS += \
./rt-thread/components/cplusplus/cxx_crt_init.d 

OBJS += \
./rt-thread/components/cplusplus/cxx_Mutex.o \
./rt-thread/components/cplusplus/cxx_Semaphore.o \
./rt-thread/components/cplusplus/cxx_Thread.o \
./rt-thread/components/cplusplus/cxx_crt.o \
./rt-thread/components/cplusplus/cxx_crt_init.o 

CPP_DEPS += \
./rt-thread/components/cplusplus/cxx_Mutex.d \
./rt-thread/components/cplusplus/cxx_Semaphore.d \
./rt-thread/components/cplusplus/cxx_Thread.d \
./rt-thread/components/cplusplus/cxx_crt.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/components/cplusplus/%.o: ../rt-thread/components/cplusplus/%.cpp
	riscv64-unknown-elf-g++ -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-strict-align -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
rt-thread/components/cplusplus/%.o: ../rt-thread/components/cplusplus/%.c
	riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-strict-align -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DDEBUG -DUSE_NONVECTOR_MODE=1 -DFLASH_XIP=1 -I"E:\RT-ThreadStudio\workspace\HPM6750" -I"E:\RT-ThreadStudio\workspace\HPM6750\applications" -I"E:\RT-ThreadStudio\workspace\HPM6750\board" -I"E:\RT-ThreadStudio\workspace\HPM6750\libraries\drivers" -I"E:\RT-ThreadStudio\workspace\HPM6750\libraries\hpm_sdk\arch" -I"E:\RT-ThreadStudio\workspace\HPM6750\libraries\hpm_sdk\components\debug_console" -I"E:\RT-ThreadStudio\workspace\HPM6750\libraries\hpm_sdk\components\touch" -I"E:\RT-ThreadStudio\workspace\HPM6750\libraries\hpm_sdk\components\usb" -I"E:\RT-ThreadStudio\workspace\HPM6750\libraries\hpm_sdk\drivers\inc" -I"E:\RT-ThreadStudio\workspace\HPM6750\libraries\hpm_sdk\soc\HPM6750\boot" -I"E:\RT-ThreadStudio\workspace\HPM6750\libraries\hpm_sdk\soc\HPM6750" -I"E:\RT-ThreadStudio\workspace\HPM6750\libraries\hpm_sdk\soc\ip" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\aht10-latest" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\at_device-latest\class\esp8266" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\at_device-latest\inc" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\cJSON-latest" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\netutils-v1.3.2\ntp" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\onenet-latest\inc" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\pahomqtt-v1.1.0\MQTTClient-RT" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\pahomqtt-v1.1.0\MQTTPacket\src" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\webclient-latest\inc" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\cplusplus" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\dfs\filesystems\devfs" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\dfs\include" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\drivers\include" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\drivers\sensors" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\drivers\spi" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\finsh" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\libc\compilers\common" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\libc\compilers\gcc\newlib" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\net\at\at_socket" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\net\at\include" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\net\netdev\include" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\net\sal_socket\impl" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\net\sal_socket\include\dfs_net" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\net\sal_socket\include\socket\sys_socket" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\net\sal_socket\include\socket" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\net\sal_socket\include" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\include" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\libcpu\risc-v\hpmicro" -I"E:\RT-ThreadStudio\workspace\HPM6750\startup\HPM6750" -include"E:\RT-ThreadStudio\workspace\HPM6750\rtconfig_preinc.h" -std=gnu11 -ffunction-sections -fdata-sections -fno-common -march=rv32imac -mabi=ilp32 -mcmodel=medlow -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

