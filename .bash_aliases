#!/bin/bash
# .bash_aliases
#
#	BASH ALIASES FROM HACKINTHEBOX 
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
. interface_shortcuts
alias la='ls -Ah'
alias l='ls -CF'
alias sudo='sudo '
alias rm='rm -i -v'
alias e='exit >&/dev/null'
alias cr='crr() { curl cheat.sh/$1; }; crr $1'
alias lf='ls -1AF | while read line; do sudo du -hs "$line" 2>/dev/null; done | sort -h'
alias routersploit='cd ${HOMEPATH}/git/routersploit && python3 rsf.py'
alias findf='findfr() { echo finding "$1"...; find . -iname "$*" 2>/dev/null; }; findfr $*'
alias finds='findss() { echo finding "$1"...; sudo find . -iname "$*" 2>/dev/null; }; findss $*'
alias catbash='cat ~/.bash_aliases | less'
alias iperf="iperf3"
alias yt='ytdl $* && alert Download Complete'
alias xit='chmod -R a+x ${HOMEPATH}/local/bin/*'
alias nanbash='nano ${HOMEPATH}/.bash_aliases'
alias fern='sudo python /usr/share/fern-wifi-cracker/execute.py'
alias wifite='wifite --kill -mac'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
alias addkey='sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys'
alias backstab='cp /etc/fstab $HOMEPATH/local/var/backups/etc/fstab/fstab_$(date | sed -E 's/\s/_/g')'
#alias lsusb='lsusb -t'
alias ipa='ip -br a'
alias locate='locate -i'
alias lspipe='ls -1Aph | grep -v "\/" |'
alias ip='ip -c'
alias back-up='pkexec rsync -r -t -p -o -g -v --progress --delete -l -H -D --partial -i -s --partial --fuzzy --exclude=/media --exclude=/proc --exclude=/sys --exclude=/run/user --exclude=/tmp --exclude=/dev --exclude=/mnt --exclude=/cdrom --exclude=*cache* / /media/shawn/1378d979-bda1-4eb8-aefd-b9f067bc7197'


