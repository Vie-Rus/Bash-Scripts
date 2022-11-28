#This program's example runs a game of the class COSC 362 Unix with different bash Commands

#!/bin/bash
clear
sleep 3
echo "Welcome To Class 362 Unix Trail"
sleep 1

echo "Hi student what's your name??"
read userInput
sleep 2

#Scene 1
echo "
                        !
                   /////^\\\\\\\\\\\\\\
                   |  _     _  | 
                   | ( o)  ( o)|  
                   |     <     |
                   |    ___   | 
                    \________/ 
                _____|     |_____ 
               /      \___/       \ 
              /                    \ 
             /     /|         |\    \ 
            / \__/  | comics  | \___/\ 
           (   <   _|_________|_  >   ) 
            \   \ |             |/   /  
             \    |     PC      |   /
|==========================================| "

echo "Welcome" $userInput "to Class 362 Unix Trail"
sleep 2
echo "Professor: Hello I'm Dr. Chrispell your professor for this Class." 
sleep 3
echo "Professor: First thing you'll learn is mouses are useless, and was the worst thing we added to computers. See in the Linux terminal, you don't need to use a mouse since..."
sleep 1

echo "Dr.Chrispell's class has started"
PS3='What do you do:'
options=("Zone Out" "Be interested" "Play an Online Game" "Drop Out")
select choice in "${options[@]}"; do
	case $choice in
		"Zone Out") #Choice 1.0
			echo "You've zoned out. You're thinking about a moment in high school that make you feel shame… You start to come out from your zoning and notice Dr.Chrispell has already started typing in mobaXTerm"
			PS3='What do you do next: '
			options1=("Catch Up" "Take it Slow" "Play an Online Game")
			select choice1 in "${option1[@]}"; do
				case $choice1 in
					"Catch up") #Choice 1.1
						echo "You scramble to catch up with the class. However you are typing too fast and get steam local motive and are held up even more. Dr. Chrispell can see that you are trying your best."
						echo "The Final is upon us and you've done well enough to pass this class!"
						echo $userInput "Final grade: B"
						exit 0
						;;

					"Take it Slow") #Choice 1.2
						echo "You accept you're going to be behind and you take it slow. You actually catch up rather quick though."
						echo "The Final is upon us and you've passed the class with flying colors!"
						echo $userInput "Final grade: A"
						exit 0
						;;

					"Play an Online Game") #Choice 1.3
						echo "You decide that you're too far behind and want to play a game instead. You split your screen and load up the snake game."
						echo "The Final is upon us and although you did pay attention to some of the class, your scores were slightly better at the snake game then the Final."
						echo $userInput "Final grade: C"
						exit 0
						;;
				esac
			done
			;;

		"Be interested") #Choice 2.0
			echo "You focus on why Dr.Chrispell thinks the mouse is useless on the computer and you understand his point but that’s such a Boommer thing to say. You smile and nod and don't raise your hand to encourage it. Dr.Chrispell then starts his class and pulls up mobaXTerm"
			PS3='What do you do next: '
			options2=("Follow along still" "Dress up your code" "Play an Online Game")
			select choice2 in "${options2[@]}"; do
				case $choice2 in
					"Follow along still") #Choice 2.1
						echo "You've followed along with the class without distraction… the end of the year comes rather quickly."
						echo "The Final is upon us and you've passed the class with flying colors!"
						echo $userInput "Final grade: A+"
						exit 0
						;;

					"Dress up your code") #Choice 2.2
						echo "You've dressed up your code to make it good looking. (i.e blankspace, comment boarders, etc) however you do miss some important parts and start to fall behind a bit."
						echo "The Final is upon us and you've done well enough to pass this class!"
						echo $userInput "Final grade: B"
						exit 0
						;;

					"Play an Online Game") #Choice 2.3
						echo "You decide that this class is boring and want to play a game instead. You split your screen and load up the snake game."
						echo "The Final is upon us and although you did pay attention to some of the class, your scores were slightly better at the snake game then the Final."
						echo $userInput "Final grade: C"
						exit 0
						;;
				esac
			done
			;;

		"Play an Online Game") #Choice 3.0
			echo "You don't even notice Dr.Chrispell's mouse rant and you log onto the computer and create a split screen, half of Dr.Chrispell's screen and the other half is the snake game. At a point you see Dr.Chrispell start signing off. Class is over..."
			echo "The Final is upon us and although you split the screen and payed attention it wasn't enought. Your scores were slightly better at the snake game than the Final."
			echo $userInput "Final grade: D"
			exit 0
			;;

		#Done
		"Drop Out") #Choice 4.0
			echo $userInput "dropped the class."
			exit 0
			;;
	esac
done