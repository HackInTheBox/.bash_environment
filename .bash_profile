#!/bin/bash
# ~/.bash_profile
#
#	BASH_PROFILE FROM HACKINTHEBOX 
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
# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/local/bin" ] ; then
    PATH="$HOME/local/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
