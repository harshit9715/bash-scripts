#!/bin/bash

function lenstr {
echo -e "\t Length of string is : ${#strval}"
echo
}

function numwords {
stringarr=($strval)
echo -e "\t Total number of words : ${#stringarr[@]}"
}

function touppercase {
echo -e "\t$strval" | awk '{print toupper($0)}'
echo
}

function tolowercase {
echo -e "\t$strval" | awk '{print tolower($0)}'
echo
}

function totitlecase {
echo -e "\t$strval" | sed 's/.*/\L&/; s/[a-z]*/\u&/g'
echo
}

function checkpalin {
if [[ $(rev <<< "$strval") == "$strval" ]] 
then
    echo -e "\tPalindrome string"
else
	echo -e "\tNot a palindrome string"
fi
}

function changestring {
echo
echo -e "\tEnter new string:"
read strval
}



function menu {
clear
echo -e "\t\tYour entered string is:"
echo -e "\t\t$strval"
echo -e "\t\t\tMenu\n"
echo -e "\t(a) Length of the string."
echo -e "\t(b) Number words in a string"
echo -e "\t(c) Convert all the character in a string to upper case"
echo -e "\t(d) Convert all the character in a string to lower case"
echo -e "\t(e) Convert all the character in a string to title case"
echo -e "\t(f) To check whether the given string is palindrome or not"
echo -e "\t(g) Change string"
echo -e "\t(h) Exit\n"
echo -en "\t\tEnter an Option: "
read -n 1 option
}

echo "Welcome!"
echo "Enter a string:"
echo ""
read strval
while [ 1 ]
do
menu
case $option in
"a")
lenstr ;;

"b")
numwords ;;

"c")
touppercase ;;

"d")
tolowercase ;;

"e")
totitlecase ;;

"f")
checkpalin ;;

"g")
changestring ;;

"h")
echo -e "\tGoodbye!!"
exit ;;


*)
clear
echo "Sorry, wrong selection";;
esac
echo -en "\n\n\t\t\tHit any key to continue"
read -n 1 line
done
