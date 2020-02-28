#!/bin/bash
# useradd1.sh - A simple shell script to display the form dialog on screen
# set field names i.e. shell variables

line1=""
line2=""
line3=""
line4=""
line5=""

# Store data to $VALUES variable

#VALUES=$(dialog --no-lines --no-cancel  --ok-label "Print" \
dialog --no-lines --no-cancel  --ok-label "Print" \
	  --backtitle "Zebra Printer Application | By Jake Merola" \
	  --title "Manual Entry" \
	  --form "Press Ctrl+N to go to next field." 12 41 0 \
	"Line 1: " 1 1	"$line1" 	1 10 25 37 \
	"Line 2: " 2 1	"$line2"  	2 10 25 37 \
	"Line 3: " 3 1	"$line3"  	3 10 25 37 \
	"Line 4: " 4 1	"$line4" 	4 10 25 37 \
	"Line 5: " 5 1	"$line5" 	5 10 25 37 \


# display values just entered
clear
echo "$line1"
echo "$line2"
echo "$line3"
echo "$line4"
echo "$line5"
echo "end of data"




