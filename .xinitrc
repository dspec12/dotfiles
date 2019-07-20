#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

#xrandr --dpi 125.37
xrandr --dpi 109.68
exec i3
