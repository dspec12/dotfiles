#!/usr/bin/env sh

# Toggle floating dropdown terminal in i3, or start if non-existing.

if xwininfo -tree -root | grep "(\"dropdown\" ";
then
	echo "Window detected."
	sway "[instance=\"dropdown\"] scratchpad show; [instance=\"dropdown\"] move position center"
else
	echo "Window not detected... spawning."
	sway "exec --no-startup-id termite --name=dropdown"
fi
