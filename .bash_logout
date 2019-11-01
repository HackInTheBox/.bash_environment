#!/bin/bash
# ~/.bash_logout
#
#	BASH LOGOUT FROM HACKINTHEBOX 
#         VERSION ACER-SWIFT UBUNTU LINUX
#  _                _    _       _   _          _               
# | |__   __ _  ___| | _(_)_ __ | |_| |__   ___| |__   _____  __
# | '_ \ / _` |/ __| |/ / | '_ \| __| '_ \ / _ \ '_ \ / _ \ \/ /
# | | | | (_| | (__|   <| | | | | |_| | | |  __/ |_) | (_) >  < 
# |_| |_|\__,_|\___|_|\_\_|_| |_|\__|_| |_|\___|_.__/ \___/_/\_\
#
#	(c) 2019 hackInTheBox@professionalidiot.com
#
#
# when leaving the console clear the screen to increase privacy

if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi
