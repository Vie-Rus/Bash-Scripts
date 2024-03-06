""" 
This program when runned, will get the last information from users on the system. 
It will then move the data to a log file.
From there the program will be read and stripped down and put into a .tex file.
Then the OS will turn the .tex file into a pdf document through pdflatex/evince.
This program will end once the PDF opens itself.

Author: Lileah Tunno     ||       Date: 10/14/2022
                         ||   Modified: 10/19/2022
                         
"""
#Imports ====================================================================
import os
from string import whitespace

#Classes =====================================================================
class lastInfo:
    def __init__(self, username, pts, ipAddy, weekD, monthD, day, Stime, until, Etime, LoginTime):
            self.username = username
            self.ipAddy = ipAddy
            self.weekD = weekD
            self.monthD = monthD
            self.day = day
            self.Stime = Stime
            self.Etime = Etime
            self.LogInTime = LoginTime
            self.pts = pts
            self.until = until

class LastDataText(lastInfo):
    def __init__(self, lastInfo):
        self.lastInfo = lastInfo

        self.header = ("\\documentclass[12pt]{article} \n"
                     + "\\usepackage{geometry} \n"
                     + "\\geometry{hmargin={1in,1in},vmargin={2in,1in}}\n"
                     + "\\begin{document} \n"
                     + "\\thispagestyle{empty} \n\n " )
        
        self.templateLast = ("Username       Weekday      Month       Day    Start Time  - End Time      Log in Time      ipAddress\n",                               
                             "=========================================================================================================\n")
        
        self.lastDataLines = (self.lastInfo.username +" was on at "+
                               self.lastInfo.weekD +" "+ self.lastInfo.monthD +" "+ self.lastInfo.day +" at "+
                               self.lastInfo.Stime +" to "+ self.lastInfo.Etime +" for "+
                               self.lastInfo.LoginTime +" minutes/seconds, from IP Address:"+ self.lastInfo.ipAddy +"\n\n+")

        self.footer = ("\\end{document}\n")
                 
                           
    def writeLastPDF(self):
        lastDataOut = str(self.lastInfo.monthD.lstrip(' ')) + ".tex"
        lastFile = open(lastDataOut, "w")
        lastFile.write(self.header)
        lastFile.write(self.templateLast)
        lastFile.write(self.lastDataLines)
        lastFile.write(self.footer)
#==============================================================================


#Write Log file
os.system("last")
os.system("last > lastHW.log")
os.system("cat lastHW.log")                 #Test 1 to see if write log file works

#Open Log File
lastData = open('lastHW.log', "r+")

#Read Log File
lastList = []

#if Still logged in 
if "still logged in" in lastList:
    exit
        
#Read Data in log file
for line in lastData.readlines():
    username, pts, ipAddy, weekD, monthD, day, Stime, until, Etime, LoginTime = map(str,line.split(' '))
    currentData = lastInfo(username, ipAddy, weekD, monthD, day, Stime, Etime, LoginTime)
    lastList.append(currentData)
    print(currentData)                      #Test 2 to see if read data in log file works
   
   
#Input into functions
for i in range(len(lastList)):
   TexFile = LastDataText(lastList[i])
   TexFile.writeLastPDF()
 

#Read PDF
os.system("echo ABOUT TO OPEN A PDF FILE...")       #Test 3 to see if functions worked corretly
os.system("pdflatex lastFile.tex")
os.system("evince lastFile.pdf")


#Clean and Close
lastData.close()