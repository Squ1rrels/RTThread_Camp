################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTConnectClient.c \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTConnectServer.c \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTDeserializePublish.c \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTFormat.c \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTPacket.c \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTSerializePublish.c \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTSubscribeClient.c \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTSubscribeServer.c \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTUnsubscribeClient.c \
../packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTUnsubscribeServer.c 

OBJS += \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTConnectClient.o \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTConnectServer.o \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTDeserializePublish.o \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTFormat.o \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTPacket.o \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTSerializePublish.o \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTSubscribeClient.o \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTSubscribeServer.o \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTUnsubscribeClient.o \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTUnsubscribeServer.o 

C_DEPS += \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTConnectClient.d \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTConnectServer.d \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTDeserializePublish.d \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTFormat.d \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTPacket.d \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTSerializePublish.d \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTSubscribeClient.d \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTSubscribeServer.d \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTUnsubscribeClient.d \
./packages/pahomqtt-v1.1.0/MQTTPacket/src/MQTTUnsubscribeServer.d 


# Each subdirectory must supply rules for building sources it contributes
packages/pahomqtt-v1.1.0/MQTTPacket/src/%.o: ../packages/pahomqtt-v1.1.0/MQTTPacket/src/%.c
	riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-strict-align -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DDEBUG -DUSE_NONVECTOR_MODE=1 -DFLASH_XIP=1 -I"E:\RT-ThreadStudio\workspace\HPM6750" -I"E:\RT-ThreadStudio\workspace\HPM6750\applications" -I"E:\RT-ThreadStudio\workspace\HPM6750\board" -I"E:\RT-ThreadStudio\workspace\HPM6750\libraries\drivers" -I"E:\RT-ThreadStudio\workspace\HPM6750\libraries\hpm_sdk\arch" -I"E:\RT-ThreadStudio\workspace\HPM6750\libraries\hpm_sdk\components\debug_console" -I"E:\RT-ThreadStudio\workspace\HPM6750\libraries\hpm_sdk\components\touch" -I"E:\RT-ThreadStudio\workspace\HPM6750\libraries\hpm_sdk\components\usb" -I"E:\RT-ThreadStudio\workspace\HPM6750\libraries\hpm_sdk\drivers\inc" -I"E:\RT-ThreadStudio\workspace\HPM6750\libraries\hpm_sdk\soc\HPM6750\boot" -I"E:\RT-ThreadStudio\workspace\HPM6750\libraries\hpm_sdk\soc\HPM6750" -I"E:\RT-ThreadStudio\workspace\HPM6750\libraries\hpm_sdk\soc\ip" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\aht10-latest" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\at_device-latest\class\esp8266" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\at_device-latest\inc" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\cJSON-latest" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\netutils-v1.3.2\ntp" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\onenet-latest\inc" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\pahomqtt-v1.1.0\MQTTClient-RT" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\pahomqtt-v1.1.0\MQTTPacket\src" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\u8g2-official-latest\csrc" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\u8g2-official-latest\sys\rt-thread\port" -I"E:\RT-ThreadStudio\workspace\HPM6750\packages\webclient-latest\inc" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\dfs\filesystems\devfs" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\dfs\include" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\drivers\include" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\drivers\sensors" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\drivers\spi" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\finsh" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\libc\compilers\common" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\libc\compilers\gcc\newlib" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\net\at\at_socket" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\net\at\include" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\net\netdev\include" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\net\sal_socket\impl" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\net\sal_socket\include\dfs_net" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\net\sal_socket\include\socket\sys_socket" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\net\sal_socket\include\socket" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\components\net\sal_socket\include" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\include" -I"E:\RT-ThreadStudio\workspace\HPM6750\rt-thread\libcpu\risc-v\hpmicro" -I"E:\RT-ThreadStudio\workspace\HPM6750\startup\HPM6750" -include"E:\RT-ThreadStudio\workspace\HPM6750\rtconfig_preinc.h" -std=gnu11 -ffunction-sections -fdata-sections -fno-common -march=rv32imac -mabi=ilp32 -mcmodel=medlow -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

