#!/bin/sh
# Copyright (C) 2009-2013 OpenWrt.org

. /lib/functions.sh
. /lib/functions/leds.sh

get_status_led() {
	local board=$(board_name)

	case $board in
	xag9342)
		status_led="xair-am335x:power0"
		;;
	esac
}

