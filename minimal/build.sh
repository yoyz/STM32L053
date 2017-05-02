#!/bin/bash
# rm *.o *.hex *.elf
arm-none-eabi-gcc -Wall -mcpu=cortex-m4 -mlittle-endian -mthumb -I/tmp/led_with_interupt/Drivers/CMSIS/Device/ST/STM32L0xx/Include/ -I/tmp/led_with_interupt/Drivers/CMSIS/Include -DSTM32L053xx -Os -c system.c -o system.o                      
arm-none-eabi-gcc -Wall -mcpu=cortex-m4 -mlittle-endian -mthumb -I/tmp/led_with_interupt/Drivers/CMSIS/Device/ST/STM32L0xx/Include/ -I/tmp/led_with_interupt/Drivers/CMSIS/Include -DSTM32L053xx -Os -c main.c -o main.o
arm-none-eabi-gcc -c startup_stm32l053xx.s  -o startup_stm32l053xx.o
arm-none-eabi-gcc -Wall -mcpu=cortex-m4 -mlittle-endian -mthumb -I/tmp/led_with_interupt/Drivers/CMSIS/Device/ST/STM32L0xx/Include/ -I/tmp/led_with_interupt/Drivers/CMSIS/Include -DSTM32L053xx -Os  -Wl,--gc-sections  -TSTM32L053C8_FLASH.ld main.o system.o startup_stm32l053xx.o  -o main.elf
arm-none-eabi-objcopy -Oihex main.elf main.hex
