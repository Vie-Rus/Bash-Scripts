#!/bin/bash
# Basic Bash Script for For Loop

pets='Cat Dog Turtle Bird Horse Hamster Snake'

for pet in $pets
do
echo $pet
echo "is a pet."
done

echo "Thats all the pets we have"