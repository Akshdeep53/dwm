#!/bin/bash

VAR1=$(amixer sget Master | awk 'END{print $NF}')
VAR2="[on]"

if [ "$VAR1" == "$VAR2" ]; then
	VOL=$(amixer sget Master | awk -F'[][]' 'END{print $2}')
    echo "Vol: $VOL"
else
	echo "Vol: Mute"
fi

