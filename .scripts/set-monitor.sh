#!/bin/env bash

CONNECTED_M_COUNT=$(xrandr -q | grep -e '[a-zA-Z]-[0-9] connected' | wc -l)

if (( $CONNECTED_M_COUNT > 1 )); then
   xrandr --output eDP-1 --off
else
   xrandr --output eDP-1 --auto
fi
