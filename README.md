# STM32L053

Really usefull http://regalis.com.pl/en/arm-cortex-stm32-gnulinux/
$ openocd -f /usr/share/openocd/scripts/board/stm32l0discovery.cfg

launchpad arm toolchain : https://launchpad.net/gcc-arm-embedded/+download

$ git clone https://github.com/AndiceLabs/STM32L053R8-Nucleo

$ telnet localhost 4444
> reset halt
> flash write_image erase /home/yoyz/build/STM32L053R8-Nucleo/main.hex
> reset run                
> exit

example blink led : http://stackoverflow.com/questions/29496072/stm32f401re-nucleo-led-and-buttons-example

======

Other toolchain and startup guide 

https://github.com/zmoshansky/stm32f4_getting_started/blob/master/docs/setup.md

