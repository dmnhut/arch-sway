#!/bin/sh

while true; do
    BAT_RAW=$(acpi -b | grep -Eo '[0-9]{1,3}%')
    BAT_NUM=${BAT_RAW%%%}

    if [ "$BAT_NUM" -ge 80 ]; then ICON=""
    elif [ "$BAT_NUM" -ge 60 ]; then ICON=""
    elif [ "$BAT_NUM" -ge 40 ]; then ICON=""
    elif [ "$BAT_NUM" -ge 20 ]; then ICON=""
    else ICON=""
    fi

    DATE=$(date '+%m/%d')
    TIME=$(date '+%H:%M')

    echo "$ICON $BAT_RAW|$DATE|$TIME"
    sleep 1
done
