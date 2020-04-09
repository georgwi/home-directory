#!/bin/bash
monitors=`xrandr | grep -w connected | wc -l`
echo Found $monitors monitors.

if [ "$monitors" == "3" ]
then
   xrandr --output DP-2 --auto --primary
   xrandr --output HDMI-0 --auto --left-of DP-2 --rotate left
   xrandr --output DP-0 --auto --left-of HDMI-0 --rotate left
   # This alligns the laptop monitor such that is is at the bottom of the middle large screen
   xrandr --output DP-2 --pos 2880x1480
fi

if [ "$monitors" == "2" ]
then
   xrandr --output DP-2 --auto --primary
   xrandr --output HDMI-0 --auto --right-of DP-2
   # This alligns the laptop monitor for the two monitor setup for work from home
   xrandr --output DP-2 --pos 0x300
fi
