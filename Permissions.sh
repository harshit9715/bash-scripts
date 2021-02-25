#!/bin/bash

function menu {
clear
echo -e "\t\t\tMenu\n"
echo -e "\t(1) List items with NO permission."
echo -e "\t(2) List items with Execute only permission."
echo -e "\t(3) List items with Write only permission."
echo -e "\t(4) List items with Execute and Write only permissions."
echo -e "\t(5) List items with Read only permission."
echo -e "\t(6) List items with Read and Execute only permissions."
echo -e "\t(7) List items with Read and Write only permissions."
echo -e "\t(8) List items with Read Write and Execute permissions."
echo -e "\t(9) Exit\n"
echo -en "\t\tEnter an Option: "
read -n 1 option
}

echo "Welcome!"
while [ 1 ]
do
menu
case $option in

"1")echo -e "\t $(find ./ -maxdepth 1 -user $(whoami) -perm 0)" ;;

"2")
echo -e "\t $(find ./ -maxdepth 1 -user $(whoami) -perm /111)" ;;

"3")
echo -e "\t $(find ./ -maxdepth 1 -user $(whoami) -perm /222)" ;;

"4")
echo -e "https://unix.stackexchange.com/questions/22577/write-access-without-read-access"
echo -e "\t $(find ./ -maxdepth 1 -user $(whoami) -perm /333)" ;;

"5")
echo -e "\t $(find ./ -maxdepth 1 -user $(whoami) -perm /444)" ;;

"6")
echo -e "\t $(find ./ -maxdepth 1 -user $(whoami) -perm /555)" ;;

"7")
echo -e "\t $(find ./ -maxdepth 1 -user $(whoami) -perm /666)" ;;

"8")
echo -e "\t $(find ./ -maxdepth 1 -user $(whoami) -perm /777)" ;;

"9")
echo -e "\tGoodbye!!"
exit ;;


*)
clear
echo "Sorry, wrong selection";;
esac
echo -en "\n\n\t\t\tHit any key to continue"
read -n 1 line
done
