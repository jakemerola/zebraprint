#!/bin/bash

line1=""
line2=""
line3=""
line4=""
line5=""

printf "Quick Zebra Print \n"
printf "Line 1: "
read line1
printf "Line 2: "
read line2
printf "Line 3: "
read line3
printf "Line 4: "
read line4
printf "Line 5: "
read line5

printf "Printing to /dev/lp0...\n"

echo "" > /dev/lp0
echo "." >> /dev/lp0
echo "" >> /dev/lp0
echo "N" >> /dev/lp0
echo "q200" >> /dev/lp0
echo "Q600" >> /dev/lp0
echo "A185,20,5,4,1,1,N,\"$line1\"" >> /dev/lp0
echo "A155,20,5,4,1,1,N,\"$line2\"" >> /dev/lp0
echo "A125,20,5,4,1,1,N,\"$line3\"" >> /dev/lp0
echo "A95,20,5,4,1,1,N,\"$line4\"" >> /dev/lp0
echo "A65,20,5,4,1,1,N,\"$line5\"" >> /dev/lp0
echo "" >> /dev/lp0
echo "" >> /dev/lp0
echo P1 >> /dev/lp0
echo . >> /dev/lp0
echo "" > /dev/lp0

printf "Printing complete.\n"
printf "Didn't work? Do sudo chmod 666 /dev/lp0"
