################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../src/gtest-all.cc 

C_SRCS += \
../src/_write.c 

CPP_SRCS += \
../src/firstTest.cpp \
../src/gpioTest.cpp \
../src/main.cpp 

CC_DEPS += \
./src/gtest-all.d 

OBJS += \
./src/_write.o \
./src/firstTest.o \
./src/gpioTest.o \
./src/gtest-all.o \
./src/main.o 

C_DEPS += \
./src/_write.d 

CPP_DEPS += \
./src/firstTest.d \
./src/gpioTest.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DOS_USE_TRACE_SEMIHOSTING_STDOUT -DGTEST_OS_NONE -DGTEST_HAS_DEATH_TEST=0 -DGTEST_HAS_STREAM_REDIRECTION=0 -DSTM32F407xx -DGTEST_HAS_PTHREAD=0 -DGTEST_HAS_POSIX_RE=0 -DTRACE -I"../include" -I"../" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/DEVICE" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DOS_USE_TRACE_SEMIHOSTING_STDOUT -DGTEST_HAS_STREAM_REDIRECTION=0 -DGTEST_OS_NONE -DGTEST_HAS_PTHREAD=0 -DGTEST_HAS_POSIX_RE=0 -DGTEST_HAS_DEATH_TEST=0 -DSTM32F407xx -DTRACE -I"../include" -I"../" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/DEVICE" -std=gnu++1y -fabi-version=0 -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DOS_USE_TRACE_SEMIHOSTING_STDOUT -DGTEST_HAS_STREAM_REDIRECTION=0 -DGTEST_OS_NONE -DGTEST_HAS_PTHREAD=0 -DGTEST_HAS_POSIX_RE=0 -DGTEST_HAS_DEATH_TEST=0 -DSTM32F407xx -DTRACE -I"../include" -I"../" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/DEVICE" -std=gnu++1y -fabi-version=0 -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


