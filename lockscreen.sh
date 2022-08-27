#!/bin/bash
i3lock -i $HOME/lock.png \
    --scale \
    --blur 15 \
    --clock \
    --time-str="" \
    --date-str="%H:%M:%S | %Y-%m-%d" \
    --date-pos="940:1255" \
    --date-font="Fira Code" \
    --time-font="Fira Code" \
    --time-size=35 \
    --date-color=ebdbb2ff \
    --date-size=35 \
    --ignore-empty-password \
    --show-failed-attempts
#    --screen=0 \
#    --bar-indicator \
#    --bar-base-width=10 \
#    --bar-max-height=5 \
#    --bar-direction=2 \
#    --bar-color=1f1f1fff \
#    --bar-pos=0:1080 \
