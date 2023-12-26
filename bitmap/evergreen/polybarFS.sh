#!/bin/bash

while true; do
    window_id=$(xprop -root | grep "_NET_ACTIVE_WINDOW(WINDOW)" | cut -d ' ' -f 5)

    window_props=$(xprop -id $window_id)

    if [[ $window_props == *"_NET_WM_STATE_FULLSCREEN"* ]]; then
        polybar-msg cmd hide
    else
        polybar-msg cmd show
    fi

    sleep 4
done
