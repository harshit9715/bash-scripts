#!/bin/bash

function menu {
    clear
    echo ---------------------------------------------
    echo -e '\tSelect below polygon to find area'
    echo ---------------------------------------------
    echo "Press 1 for Triangle"
    echo "Press 2 for Square"
    echo "Press 3 for Rectangle"
    echo "Press 4 for Circle"
    echo "Press 5 for Exit"
    echo
    echo Enter number[1-5]
    echo
    read polygon
}

function continue {
    echo
    echo -en "\n\n\t\t\tHit any key to continue"
    read -n 1 line
    echo $line
    menu

}

function Triangle {
    clear
    echo "Area of triange"
    echo "Enter the base: "    
    read base
    echo "Enter the height: "
    read height
    tri=$(echo - | awk -v a=$base -v b=$height '{ print a*b/2;}')
    echo "Area of Triangle is "$tri
    continue
}

function Square {
    clear
    echo "Area of square"
    echo "Enter the side: "    
    read s
    echo "Area of the square is:` expr $s \* $s `"
    continue

}

function Rectangle {
    clear
    echo "Area of rectangle"
    echo "Enter the length :"
    read length
    echo "Enter breadth"
    read breadth
    echo "Area of rectangle is: `expr $length \* $breadth`"
    continue
}

function Circle {
    clear
    echo -n "Enter the radius: "
    read radius

    area=$(echo - | awk -v radius=$radius '{ print radius*radius*3.14;}')
    echo "Area of circle "$area
    continue
}
while [ 1 ]
menu
do
    case $polygon in
        "1")Triangle;;
        "2")Square;;
        "3")Rectangle;;
        "4")Circle;;
        "5")exit;;
          *)echo "This is not a choice";;
esac
done