#This Program's example will turn any .tex file into a pdf
#This program will also remove the aux and log file

#!/bin/bash

for i in $(ls *.tex);
do
	pdflatex $i
	rm -rf *.aux *.log
done