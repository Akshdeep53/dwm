#!/bin/bash

VAR1=$(amixer sget Master | awk 'END{print $NF}')
VAR2="[on]"

if [ "$VAR1" == "$VAR2" ]; then
	VOL=$(amixer sget Master | awk -F'[][]' 'END{print $2}')
    echo "Vol: $VOL"
    dunstify "Vol: $VOL" -u normal -r 987654321
else
	echo "Vol: Mute"
    dunstify "Vol: Mute" -u normal -r 987654321
fi

