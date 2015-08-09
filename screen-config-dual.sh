#!/bin/bash
# This script enables dual screen output on Lenovo T430 Laptop (with Nvidia discrete card)
# You need bumblee and intel-virtual-output tools installed for using this script.

# start intel daemon
intel-virtual-output

# configure xandr
xrandr --output VIRTUAL3 --off --output VIRTUAL2 --off --output VIRTUAL1 --off --output VIRTUAL7 --off --output VIRTUAL6 --off --output VIRTUAL5 --mode 1280x1024 --pos 1920x0 --rotate normal --output VIRTUAL4 --off --output VIRTUAL9 --off --output VIRTUAL8 --off --output LVDS1 --off --output VGA1 --mode 1920x1080 --pos 0x0 --rotate normal

# screen clone
screenclone -d :8 -x 1 &
