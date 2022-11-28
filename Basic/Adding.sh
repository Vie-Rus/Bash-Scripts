#!/bin/bash

echo "A Basic adding Machine!"
echo "Please Enter a Number: "
read A

echo "A second number: "
read B

echo "Sum of $A and $B is: "
C=$((A+B))

echo "$C"