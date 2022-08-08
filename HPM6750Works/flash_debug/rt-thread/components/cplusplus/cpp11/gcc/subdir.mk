################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../rt-thread/components/cplusplus/cpp11/gcc/condition_variable.cpp \
../rt-thread/components/cplusplus/cpp11/gcc/mutex.cpp \
../rt-thread/components/cplusplus/cpp11/gcc/thread.cpp \
../rt-thread/components/cplusplus/cpp11/gcc/utils.cpp 

OBJS += \
./rt-thread/components/cplusplus/cpp11/gcc/condition_variable.o \
./rt-thread/components/cplusplus/cpp11/gcc/mutex.o \
./rt-thread/components/cplusplus/cpp11/gcc/thread.o \
./rt-thread/components/cplusplus/cpp11/gcc/utils.o 

CPP_DEPS += \
./rt-thread/components/cplusplus/cpp11/gcc/condition_variable.d \
./rt-thread/components/cplusplus/cpp11/gcc/mutex.d \
./rt-thread/components/cplusplus/cpp11/gcc/thread.d \
./rt-thread/components/cplusplus/cpp11/gcc/utils.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/components/cplusplus/cpp11/gcc/%.o: ../rt-thread/components/cplusplus/cpp11/gcc/%.cpp
	riscv64-unknown-elf-g++ -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-strict-align -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

