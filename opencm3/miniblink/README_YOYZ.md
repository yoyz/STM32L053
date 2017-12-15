https://github.com/libopencm3/libopencm3-examples
arm-linux-gnu-objcopy -O binary  miniblink.elf miniblink.bin
~/build/stlink/stlink-master/build/st-flash --serial /dev/ttyACM0  write miniblink.bin 0x8000000
