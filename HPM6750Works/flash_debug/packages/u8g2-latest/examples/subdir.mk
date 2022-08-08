################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../packages/u8g2-latest/examples/ssd1306_12864_sw_i2c_example.cpp 

OBJS += \
./packages/u8g2-latest/examples/ssd1306_12864_sw_i2c_example.o 

CPP_DEPS += \
./packages/u8g2-latest/examples/ssd1306_12864_sw_i2c_example.d 


# Each subdirectory must supply rules for building sources it contributes
packages/u8g2-latest/examples/%.o: ../packages/u8g2-latest/examples/%.cpp
	riscv64-unknown-elf-g++ -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-strict-align -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

