#!/bin/bash

function homedirectory {
echo -e "\t Home directory : $HOME"
echo
}

function presentdirectory {
echo -e "\tThe current working directory: $PWD"
echo
}

function currentuser {
echo -e "\tThe current user: $USER"
echo
}

function currentdate {
echo -e "\tToday is : $(date +%D)"
echo
}

function numberusers {
n=$(who | wc -l)
echo -e "\tNo of users logged in : $n"
}



function menu {
clear
echo
echo -e "\t\t\tMenu\n"
echo -e "\t(a) Home directory."
echo -e "\t(b) Present working directory"
echo -e "\t(c) Current user name."
echo -e "\t(d) Current date."
echo -e "\t(e) Number of users logged in"
echo -e "\t(f) Exit\n"
echo -en "\t\tEnter an Option: "
read -n 1 option
}

while [ 1 ]
do
menu
case $option in
"a")
homedirectory ;;

"b")
presentdirectory ;;

"c")
currentuser ;;

"d")
currentdate ;;

"e")
numberusers ;;

"f")
echo -e "\tGoodbye"
exit ;;


*)
clear
echo "Sorry, wrong selection";;
esac
echo -en "\n\n\t\t\tHit any key to continue"
read -n 1 line
done
