#!/bin/bash
# This script configures the Red pointing device on Lenovo devices to be more usable
# Mainly, it increases the speed of the pointing device

if [ ! -f /sys/devices/platform/i8042/serio1/serio2/speed ];
then
	sleep 15 
fi

echo -n 135 > /sys/devices/platform/i8042/serio1/serio2/speed
echo -n 175 >  /sys/devices/platform/i8042/serio1/serio2/sensitivity 
