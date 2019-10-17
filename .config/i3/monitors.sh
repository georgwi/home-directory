#!/bin/bash
monitors=`xrandr | grep -w connected | wc -l`
echo Found $monitors monitors.

if [ "$monitors" == "3" ]
then
   xrandr --auto --output DP-2 --primary

   # For some reason after bootup with the docking station there seem to be two possible configurations:
   setup1=`xrandr | grep "DP-0.2 connected" | wc -l`
   if [ "$setup1" == "1" ]
   then
      xrandr --auto --output DP-0.2 --left-of DP-2
      xrandr --auto --output DP-1.1 --left-of DP-0.2
   else
      xrandr --auto --output DP-1.2 --left-of DP-2
      xrandr --auto --output DP-0.1 --left-of DP-1.2
   fi
fi

