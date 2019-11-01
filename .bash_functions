#!/bin/bash
# .bash_functions
#
#	BASH FUNCTIONS FROM HACKINTHEBOX 
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
ll() {
   if [ $1 ]; then
      ls -alFhp --color=auto "$*" 
   else
      ls -alFhp --color=auto .
   fi
}

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

myip() {
   curl ifconfig.me/all; echo ""; echo ""
}
meditate() {
     if [ "$(hostname -s)" == "swift" ] && [ -f '/home/shawn/Music/White Noise - Meditation - Nature Sounds/Tibetan Singing Bowls.m4a' ]; then
	mplayer '/home/shawn/Music/White Noise - Meditation - Nature Sounds/Tibetan Singing Bowls.m4a'
     else
        echo "Cannot play track at this time"
     fi
}


