#This program's example will create a history log 
#with the month, day, year and time of when you did certain commands

#!/bin/bash

HISTFILE=~/.bash_history
HISTTIMEFORMAT="%m-%d-%Y %T "
set -o history

history > historyHW.log

cat historyHW.log