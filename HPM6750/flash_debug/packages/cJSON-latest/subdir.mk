################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../packages/cJSON-latest/cJSON.c \
../packages/cJSON-latest/cJSON_Utils.c 

OBJS += \
./packages/cJSON-latest/cJSON.o \
./packages/cJSON-latest/cJSON_Utils.o 

C_DEPS += \
./packages/cJSON-latest/cJSON.d \
./packages/cJSON-latest/cJSON_Utils.d 


# Each subdirectory must supply rules for building sources it contributes
packages/cJSON-latest/%.o: ../packages/cJSON-latest/%.c
	riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-strict-align -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DDEBUG -DUSE_NONVECTOR_MODE=1 -DFLASH_XIP=1 -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\applications" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\board" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\libraries\drivers" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\libraries\hpm_sdk\arch" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\libraries\hpm_sdk\components\debug_console" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\libraries\hpm_sdk\components\touch" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\libraries\hpm_sdk\components\usb" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\libraries\hpm_sdk\drivers\inc" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\libraries\hpm_sdk\soc\HPM6750\boot" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\libraries\hpm_sdk\soc\HPM6750" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\libraries\hpm_sdk\soc\ip" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\packages\aht10-latest" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\packages\at_device-latest\class\esp8266" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\packages\at_device-latest\inc" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\packages\cJSON-latest" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\packages\netutils-v1.3.2\ntp" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\packages\onenet-latest\inc" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\packages\pahomqtt-v1.1.0\MQTTClient-RT" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\packages\pahomqtt-v1.1.0\MQTTPacket\src" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\packages\u8g2-official-latest\csrc" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\packages\u8g2-official-latest\sys\rt-thread\port" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\packages\webclient-latest\inc" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\rt-thread\components\dfs\filesystems\devfs" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\rt-thread\components\dfs\include" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\rt-thread\components\drivers\include" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\rt-thread\components\drivers\sensors" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\rt-thread\components\drivers\spi" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\rt-thread\components\finsh" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\rt-thread\components\libc\compilers\common" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\rt-thread\components\libc\compilers\gcc\newlib" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\rt-thread\components\net\at\at_socket" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\rt-thread\components\net\at\include" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\rt-thread\components\net\netdev\include" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\rt-thread\components\net\sal_socket\impl" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\rt-thread\components\net\sal_socket\include\dfs_net" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\rt-thread\components\net\sal_socket\include\socket\sys_socket" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\rt-thread\components\net\sal_socket\include\socket" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\rt-thread\components\net\sal_socket\include" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\rt-thread\include" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\rt-thread\libcpu\risc-v\hpmicro" -I"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\startup\HPM6750" -include"C:\Users\Ess\Desktop\RTThread\Github\RTThread_Camp\HPM6750\rtconfig_preinc.h" -std=gnu11 -ffunction-sections -fdata-sections -fno-common -march=rv32imac -mabi=ilp32 -mcmodel=medlow -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

