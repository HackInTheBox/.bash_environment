#!/bin/bash
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

. interface_shortcuts
alias sudo='sudo '
alias rm='rm -i -v'
alias e='exit >&/dev/null'
alias cr='crr() { curl cheat.sh/$1; }; crr $1'
alias lf='ls -1AF | while read line; do sudo du -hs "$line" 2>/dev/null; done | sort -h'
#alias routersploit='cd ${HOMEPATH}/git/routersploit && python3 rsf.py'
alias findf='findfr() { echo finding "$1"...; find . -iname "$*" 2>/dev/null; }; findfr $*'
alias finds='findss() { echo finding "$1"...; sudo find . -iname "$*" 2>/dev/null; }; findss $*'
alias catbash='cat ~/.bash_aliases | less'
alias iperf="iperf3"
alias yt='ytdl $* && alert Download Complete'#
#
#
#
# < wheres the beef? >
# ------------------
#        \   ^__^
#         \  (oo)\_______
#            (__)\       )\/\
#                ||----w |
#                ||     ||
#
# 
# 


alias xit='chmod -R a+x ${HOMEPATH}/local/bin/*'

bashscp() {
if [ $1 ]; then
   sudo scp "${HOMEPATH}/.bash_aliases" "${1}:~/.bash_aliases"
   sudo scp "${HOMEPATH}/.bash_profile" "${1}:~/.bash_profile"
   sudo scp "${HOMEPATH}/.bashrc" "${1}:~/.bashrc"
   sudo scp -r "${HOMEPATH}"/local/bin/* "${1}:~"/local/bin
else
   echo "provide a host nickname"
fi
}

alias shutdown='sudo systemctl poweroff'

alias nanbash='nano ${HOMEPATH}/.bash_aliases'

gitgrade() {
    if [ -d ${HOMEPATH}/git/ ]; then
        ls -1Ap ${HOMEPATH}/git/ | grep '\/' | while read line
        do
            cd "${HOMEPATH}/git/$line"
            echo -en "\033[33m ${line}: \033[00m"
            git pull 2>/dev/null
            if [ $? -ne 0 ]; then
                echo -en "\033[31m Error. \033[00m Try to update manually."
            else
                echo -en "\033[36m Success. \033[00m Exit code is a Success."
            fi
            echo -e "\n\n"
        done
    else
        echo "No directory named 'git' in $HOMEPATH.  Exiting."
        exit 1
    fi
}



bashlist() {
blue() { echo -en '\033[36m'; }
red() { echo -en '\033[31m'; }
white() { echo -en '\033[00m'; }
if [ $count ]; then unset count; fi
glob="$(alias -p)"
tabs -24
echo "$glob" | while read n; do
  ((count++))
  blue; echo -n $count".) "
  red; echo -en "$(echo "$n" | sed -r 's/alias\ //g' | sed -r 's/=.*$//g')\t"
  echo -n " ";
done
echo
blue; echo "bashlist myip pings"
ls -1Fhp ${HOMEPATH}/local/bin | grep -v '\/' | while read line; do 
  ((count++))
  blue; echo -n $count".) "; 
  red; echo -en "$line\t"
done
echo
tabs -8
}

myipis() {
curl ifconfig.me/all; echo ""; echo ""
}

pings() {
  ping -c 2 -i .3 172.20.0.100 | grep -B 2 'transmitted'
  ping -c 2 -i .3 172.20.0.101 | grep -B 2 'transmitted'
  ping -c 2 -i .3 172.20.0.100 | grep -B 2 'transmitted'
  ping -c 2 -i .3 172.20.0.101 | grep -B 2 'transmitted'
}


alias fern='sudo python /usr/share/fern-wifi-cracker/execute.py'

alias mount5='sudo mount /dev/nvme0n1p5 /media/yarn/nvme5'
alias wifite='wifite --kill -mac -wpst 300'
alias addkey='sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys'
meditate() {
     if [ "$(hostname -s)" == "swift" ] && [ -f '/home/shawn/Music/White Noise - Meditation - Nature Sounds/Tibetan Singing Bowls.m4a' ]; then
	mplayer '/home/shawn/Music/White Noise - Meditation - Nature Sounds/Tibetan Singing Bowls.m4a'
     else
        echo "Cannot play track at this time"
     fi; }
alias backstab='cp /etc/fstab $HOMEPATH/local/var/backups/etc/fstab/fstab_$(date | sed -E 's/\s/_/g')'
#alias lsusb='lsusb -t'
alias ipa='ip -br a'
alias locate='locate -i'
alias lspipe='ls -1Aph | grep -v "\/" |'
alias ip='ip -c'
alias back-up='pkexec rsync -r -t -p -o -g -v --progress --delete -l -H -D --partial -i -s --partial --fuzzy --exclude=/media --exclude=/proc --exclude=/sys --exclude=/run/user --exclude=/tmp --exclude=/dev --exclude=/mnt --exclude=/cdrom --exclude=*cache* / /media/shawn/1378d979-bda1-4eb8-aefd-b9f067bc7197'

