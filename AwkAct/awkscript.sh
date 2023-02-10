#This program is a Class Activity for the AWK command
#11.11.22

#Showcase just comics major
awk '/Comic/ {print $1 " " $2}' datafile.txt


#print first names starting with Jo
awk '/^Jo/ {print $1}' datafile.txt


#Print last name that starts with Lee
awk '/^Lee/ {print $2}' datafile.txt


#Make a comma separate list for the file
awk '{print $1 ", " $2 ", "  $3 ", "  $4 ", "  $5 ", " $6 ", " $7 }' datafile.txt


#Creates an average for each name
awk  '{print $1 " " $2 " Average is : " $4+$5+$6+$7/2}' datafile.txt 