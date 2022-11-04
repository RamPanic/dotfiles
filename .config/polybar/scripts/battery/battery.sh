#!/bin/sh


BAT1_STATUS=$(cat /sys/class/power_supply/BAT1/status)
BAT1_CAPACITY=$(cat /sys/class/power_supply/BAT1/capacity)


if [ "$BAT1_STATUS" = 'Discharging' ]; then
    if [ "$BAT1_CAPACITY" -le 100 ] && [ "$BAT1_CAPACITY" -ge 76 ]; then
        echo "  $BAT1_CAPACITY%";
    elif [ "$BAT1_CAPACITY" -le 75 ] && [ "$BAT1_CAPACITY" -ge 51 ]; then
        echo "  $BAT1_CAPACITY%";
    elif [ "$BAT1_CAPACITY" -le 50 ] && [ "$BAT1_CAPACITY" -ge 26 ]; then
        echo "  $BAT1_CAPACITY%";
    elif [ "$BAT1_CAPACITY" -le 25 ] && [ "$BAT1_CAPACITY" -ge 11 ]; then
        echo "  $BAT1_CAPACITY%";
    elif [ "$BAT1_CAPACITY" -le 10 ] && [ "$BAT1_CAPACITY" -ge 0 ]; then
        echo "  $BAT1_CAPACITY";
    fi
else
    echo "  $BAT1_CAPACITY%";
fi
