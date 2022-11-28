#!/bin/bash
#This script is a basic while loop for bash.

counter=1

while [ $counter -le 10 ]
do
echo $counter
sleep 2
clear
((counter++))
done

echo "Funnnnnn"