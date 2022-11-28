#!/bin/bash
#simple menu system.

pets='cat dog bird Quit'
PS3='Select Pet by entering a number:'

select pet in $pets

do
if [$pet == 'Quit']
then
	break
fi
echo Hello $pet
done

echo Bye