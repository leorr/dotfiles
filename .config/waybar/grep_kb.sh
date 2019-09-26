#!/bin/dash
strval=
if [ "$(swaymsg -t get_inputs | grep 1:1:AT_Translated_Set_2_keyboard -C 10 | grep xkb_active_layout_index | awk '{ printf $2 }' | tr -d ',')" = "1" ]; then
	echo "BR"
else
	echo "US"
fi
