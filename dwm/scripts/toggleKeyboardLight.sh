#!/bin/bash
filename='/sys/class/leds/asus::kbd_backlight/brightness'
while read line; do
if test $line -eq 1
then
	echo 0 | tee /sys/class/leds/asus::kbd_backlight/brightness
else
	echo 1 | tee /sys/class/leds/asus::kbd_backlight/brightness
fi

done < $filename
