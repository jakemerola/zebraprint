#!/bin/sh

echo 'command line args are', $0, $1, $2

>temp.txt
echo $1 >> temp.txt
echo $2 >> temp.txt
echo $3 >> temp.txt
echo $4 >> temp.txt
echo $5 >> temp.txt
cat temp.txt








