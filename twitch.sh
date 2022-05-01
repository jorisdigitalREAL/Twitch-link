#!/bin/bash


cat << "EOF" 


___________       .__  __         .__      .____    .__        __    
\__    ___/_  _  _|__|/  |_  ____ |  |__   |    |   |__| ____ |  | __
  |    |  \ \/ \/ /  \   __\/ ___\|  |  \  |    |   |  |/    \|  |/ /
  |    |   \     /|  ||  | \  \___|   Y  \ |    |___|  |   |  \    < 
  |____|    \/\_/ |__||__|  \___  >___|  / |_______ \__|___|  /__|_ \
                                \/     \/          \/       \/     \/


EOF



PS3="What would you like to do?:"
options=("Add to favorites" "Show favorites" "Start a stream" "Quit")
select fav in "${options[@]}"; do
case $fav in
"Add to favorites")
echo "Who would you like to add?"
read name
printf "streamlink -p 0 twitch.tv/$name best | xargs \n "  >> favorites.sh
sleep 1
echo "$name added to favorites."
;;
"Show favorites")
#
./favorites.sh > ./status.txt
#
sleep 1 
#
awk -v red="$(tput setaf 1)" -v green="$(tput setaf 2)" -v zero="$(tput sgr0)" '{if ($10 == "Available") print substr ($8, 11) " -" green" online"zero; else print substr ($8, 11) " -" red" offline"zero}' status.txt
;;
"Start a stream")
echo "Who would you like to stream?"
read name
echo $(streamlink -p mpv www.twitch.tv/$name best)
;;
"Quit")
echo "Request exit"
sleep 1
exit
;;
*) echo "Invalid option $REPLY";;
esac
done 


