#!/bin/bash

lvl=$(cat /sys/class/power_supply/BAT*/capacity | awk '{sum+=$0;count+=1} END {print sum/count}')
int_lvl=$(echo $lvl | awk '{print $0*10}')
cat /sys/class/power_supply/BAT*/status | grep Discharging > /dev/null;

if [ $? == 1 ]
then
   icon=
elif [ $int_lvl -gt 750 ]
then
   icon=
elif [ $int_lvl -gt 500 ]
then
   icon=
elif [ $int_lvl -gt 250 ]
then
   icon=
elif [ $int_lvl -gt 0 ]
then
   icon=
elif [ $int_lvl -eq 0 ]
then
   icon= 
fi

echo $icon $lvl%
