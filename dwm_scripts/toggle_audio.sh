#!/bin/sh

amixer sset Master toggle
amixer sset Master toggle
amixer sset Headphone toggle    
amixer sset Front toggle
amixer sset Surround toggle
amixer sset Center toggle
amixer sset LFE toggle
amixer sset Side toggle

if [[ "$(amixer sget Master | awk 'END{print $NF}')" == "[off]" ]]
then 
    amixer sset Master unmute
    if [[ "$(amixer sget Headphone | awk 'END{print $NF}')" == "[off]" ]]
    then 
        amixer sset Headphone unmute    
        if [[ "$(amixer sget Front | awk 'END{print $NF}')" == "[off]" ]]
        then 
            amixer sset Front unmute
            if [[ "$(amixer sget Surround | awk 'END{print $NF}')" == "[off]" ]]
            then 
                amixer sset Surround unmute 
                if [[ "$(amixer sget Center | awk 'END{print $NF}')" == "[off]" ]]
                    then 
                    amixer sset Center unmute
                    if [[ "$(amixer sget LFE | awk 'END{print $NF}')" == "[off]" ]]
                    then 
                        amixer sset LFE unmute
                        if [[ "$(amixer sget Side | awk 'END{print $NF}')" == "[off]" ]]
                        then 
                            amixer sset Side unmute
                        fi
                    fi
                fi
            fi
        fi
    fi
else
    amixer sset Master mute
    amixer sset Headphone mute    
    amixer sset Front mute
    amixer sset Surround mute 
    amixer sset Center mute
    amixer sset LFE mute
    amixer sset Side mute
fi

sleep 0.3 

pkill -RTMIN+11 dwmblocks

