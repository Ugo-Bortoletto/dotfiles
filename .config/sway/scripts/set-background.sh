#!/usr/bin/env bash


WALLPAPER="$HOME/.config/sway/scripts/arch-black-4k.png"
COLOR="#24273a"


if [[ -f "$WALLPAPER" ]]; then
    swaymsg "output * bg $WALLPAPER fill"
    #swaybg -i "$WALLPAPER" -m fill &
else
    swaymsg "output * bg $COLOR solid_color"
    #swaybg -c "$COLOR" &
fi
