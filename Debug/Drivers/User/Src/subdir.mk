################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/User/Src/ring_buffer.c 

OBJS += \
./Drivers/User/Src/ring_buffer.o 

C_DEPS += \
./Drivers/User/Src/ring_buffer.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/User/Src/%.o: ../Drivers/User/Src/%.c Drivers/User/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F303xC -c -I../Core/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Projects/Internal_Temp_Sensor/Drivers/User" -I"C:/Projects/Internal_Temp_Sensor/Drivers/User/Src" -I"C:/Projects/Internal_Temp_Sensor/Drivers/User/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-User-2f-Src

clean-Drivers-2f-User-2f-Src:
	-$(RM) ./Drivers/User/Src/ring_buffer.d ./Drivers/User/Src/ring_buffer.o

.PHONY: clean-Drivers-2f-User-2f-Src

