#!/bin/bash

echo ""
echo -e "\e[32m[*]\e[34m Installing T-t-modern \e[m "
echo ""

# storage permission
termux-setup-storage

echo

# Updating the packages
apt-get update -y

# Upgrading the packages
apt-get upgrade -y

# Installing python if not installed ;if install null
apt-get install python -y

# packing up figlet
apt-get install figlet -y

#Installing ruby
apt-get install ruby -y

# install gem ruby
gem install ruby

#parsing ruby ....
pip install lolcat

#install lolcat with gems
gem install lolcat

#Install toilet
apt-get install toilet -y

# now installing ncurses-utils
pkg install ncurses-utils -y

# install cowsay in termux if not installed
apt-get install cowsay -y

#installing nano
apt-get install nano -yq --silent

# install mpv to play the hackers sound
apt-get install mpv -y

cd ${PREFIX}/share
git clone https://github.com/xero/figlet-fonts.git >> /dev/null 2>&1


# Moving figlet-fonts to figlet
mv figlet-fonts/* figlet &&  rm -rf figlet-fonts

cd $OLDPWD

# T-modern Banner

clear
echo ""

# hide cursor
tput civis

echo " "
echo "

  WELCOME TO Done4us
   
  
    _________     _______  _______  ______   _______  _______  _       
    \__   __/    (       )(  ___  )(  __  \ (  ____ \(  ____ )( (    /|
       ) (       | () () || (   ) || (  \  )| (    \/| (    )||  \  ( |
       | | _____ | || || || |   | || |   ) || (__    | (____)||   \ | |
       | |(_____)| |(_)| || |   | || |   | ||  __)   |     __)| (\ \) |
       | |       | |   | || |   | || |   ) || (      | (\ (   | | \   |
       | |       | )   ( || (___) || (__/  )| (____/\| ) \ \__| )  \  |
       )_(       |/     \|(_______)(______/ (_______/|/   \__/|/    )_) v 1.0" |lolcat

echo " "
echo " "
echo " 
 <─────────────── [ Coded by =*•.¸♡ DONE4US ♡¸.•* ] ───────────────>            
                                                               " |lolcat


sleep 2.
echo ""
echo ""
echo "[*] Installing T-Modern " |lolcat
echo ""
sleep 2
echo "[*] Please Wait " |lolcat
echo ""
sleep 2
echo "[*] Checking the required package " |lolcat
echo ""
sleep 2
echo "[*] Reading package list " |lolcat
echo ""
sleep 2
echo "[*] Done " |lolcat
echo ""
sleep 2

# Cursor to normal
tpur cnorm


# change directory to etc
cd $HOME/../usr/etc

# hiding old bash.bashrc and motd
mv bash.bashrc .bash.bashrc
mv motd .motd

# change directory to HOMR
cd $OLDPWD

# change dir to T-modern
# cd T-modern

# cp bb $HOME

# copy new bash.bashrc to usr/etc
cp bash.bashrc $HOME/../usr/etc 

# check old file exist or not if exist remove it and replace it
tfile="${PREFIX}/bin/uninstall-t-modern"
if [ -f "$tfile" ]
then
rm ${PREFIX}/bin/uninstall-t-modern
else
echo ""
#echo -e "\033[96m\t\t\tNOT FOUND! \033[m"
fi

# copy uninstall uninstall-t-modern
cp uninstall-t-modern ${PREFIX}/bin

# Giving the permission to uninstall-t-modern to execute
chmod +x ${PREFIX}/bin/uninstall-t-modern

# copying the hacker.mp3 sound to the use usr as .hacker.mp3
mv hacker.mp3 ${PREFIX}/.hacker.mp3

# execute user.sh to validate user define variable
bash user.sh

clear

echo ""
echo ""
tput civis
echo -e "\033[1;34m[*]\e[33m Setting login Information \e[m"
echo ""
sleep 2
echo -e "\033[1;34m[*]\e[33m Installing Login Packages \e[m"
echo ""
sleep 2
echo -e "\033[1;34m[*]\e[33m Reading Packages \e[m"
echo ""
sleep 2
echo -e "\033[1;34m[*]\e[33m Securing termux-login \e[m"
echo ""
sleep 2
echo -e "\033[1;34m[*]\e[33m Please wait \e[m"
echo ""
sleep 2
echo -e "\033[1;34m[*]\e[33m DONE \e[m"
sleep 3
tput cnorm

# Login Banner
clear
echo 
echo 
tput civis
echo -e "\e[32m    

                       ██╗      █████╗  ██████╗ ██╗███╗  ██╗
                       ██║     ██╔══██╗██╔════╝ ██║████╗ ██║
                       ██║     ██║  ██║██║  ██╗ ██║██╔██╗██║
                       ██║     ██║  ██║██║  ╚██╗██║██║╚████║
                       ███████╗╚█████╔╝╚██████╔╝██║██║ ╚███║         
		       ╚══════╝ ╚════╝  ╚═════╝ ╚═╝╚═╝  ╚══╝ v 2.0 "
echo 
echo "            ☆:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::☆" |lolcat -t
echo "                            s c r i p t  b y   D O N E 4 U S             " |lolcat -t
echo "            ☆:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::☆" |lolcat -t

sleep 4
tput cnorm

# Setting up a login information From user side
bash login.sh

# Spinner
#bash spin.sh
bash ashi.sh

# user custom theme setup
# select the option to the setup the theme
# check if dir or files exist

#Dir=.termux
DIR="$HOME/.termux"
 if [ -d "$DIR" ]
then 
  echo
else
  mkdir $HOME/.termux
fi

#file1=termux.properties
FILE="$HOME/.termux/termux.properties"
if [ -f "$FILE" ]
then 
  echo
else
  cd $HOME/.termux/
  touch termux.properties
fi

#file2=colors.properties
FILES1="$HOME/.termux/colors.properties"
if [ -f "FILES1" ]
 then
  echo 
 else 
  cd $HOME/.termux/
  touch colors.properties
 fi
 
 #file1=$PREFIX/bin/zsh
FILE2="$PREFIX/bin/zsh"
if [ -f "$FILE2" ]
then 
  rm -rf $PREFIX/bin/zsh
else
  echo
fi

clear

# T-Remix Cursor
# A user can set a cursor as demanded

# cursor()
clear
while :
do
echo 
echo
echo "==========================" |lolcat
echo "      Set T-t-modern cursor"    | lolcat -t
echo "==========================" |lolcat
echo
echo "1] Block >> ' ▌ ' " | lolcat -t
echo
echo "2] Underline >> ' _ ' " |lolcat -t
echo
echo "3] Bar >> ' | ' " | lolcat -t
echo
echo

read -p $'\e[32m[\e[31m*\e[32m]\e[96m Enter your choice : ' choice
echo 
if [ $choice = 1 ]
then
echo ">> Setting cursor" |lolcat -t
sleep 2
echo
echo ">> Reloading settings" |lolcat -t
sleep 3
echo
echo ">> Done" |lolcat -t
sleep 2
echo "echo -e '\e[2 q' " >> ${PREFIX}/etc/bash.bashrc
break
elif [ $choice = 2 ]
then
echo ">> Setting cursor" |lolcat -t
sleep 2
echo
echo ">> Reloading settings" |lolcat -t
sleep 3
echo
echo ">> Done" |lolcat -t
sleep 2
echo "echo -e '\e[4 q' " >> ${PREFIX}/etc/bash.bashrc
break
elif [ $choice = 3 ]
then
echo ">> Setting cursor" |lolcat -t
sleep 2
echo
echo ">> Reloading settings" |lolcat -t
sleep 3
echo
echo ">> Done" |lolcat -t
sleep 2
echo "echo -e '\e[6 q' " >> ${PREFIX}/etc/bash.bashrc
break
else 
echo
echo -e  "\e[33m[\e[31m!\e[33m]\e[31m Invalid option try again \e[m"
sleep 3
clear
fi
done
tput cnorm


# save a session shortcut
# dir checker

if [ -f ~/.termux/termux.properties ]
then 
echo
else 
touch  ~/.termux/termux.properties
fi 

# shortut
clear
echo 
echo
echo -e "\e[36m================================\e[m"
echo -e "\e[32m            NOTE \e[m" 
echo -e "\e[36m================================\e[m" 
echo
echo -e "\e[34m[\e[31m*\e[34m] \e[32mT-Remix has created a session shortcut\e[m" 
echo 
echo -e "\e[36m[\e[32m*\e[36m]\e[32m New session shortcut ---> CTRL + t \e[m"
echo 
echo -e "\e[36m[\e[32m*\e[36m]\e[32m Next session shortcut ---> CTRL + 1 \e[m"
echo 
echo -e  "\e[36m[\e[32m*\e[36m]\e[32m Previous session shortcut ---> CTRL + 2 \e[m"
echo 

echo -en "\e[36m[\e[32m*\e[36m]\e[93m Do you wish to make shortcut changes (y | n)? \e[m "
read answer
echo
if [ "$answer" != "${answer#[Yy]}" ]
then
echo "shortcut.create-session = ctrl + t
shortcut.next-session = ctrl + 1
shortcut.previous-session = ctrl + 2" >> ~/.termux/termux.properties
echo
sleep 1
echo
echo ">> Shortcut has been applied successfully" |lolcat -t
sleep 5
else 
echo
echo ">> Shortcut not applied !! " |lolcat -t
sleep 2
fi



# Like Subscribe BhavikTutorials
clear
tput clear
tput cup 3 30
echo -e "\e[44m Like \e[41m Subscribe \e[m"
tput cup 6 30
echo -e "\x1b[42m DONE4US \x1b[m"
tput cup 9 0
echo -en "\e[93m what is your name : \e[m"
read answer
tput cup 12 22
echo -e "\e[37m \e[104m hello! Open a New session!! $answer! \e[m"
tput cup 15 0
echo -en "\e[93m Have you subscribe our channel (y | n)? \e[m "
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
tput cup 17 21
    echo -e "\e[42m Thankyou for subscribing our channel \e[m"
else
#tput cup 17 23
#    echo -e "\e[41m Please subsrcibe our channel \e[m"
am start -a android.intent.action.VIEW -d https://www.youtube.com/channel/UC4479WTD05jcnlA0jxnqclg
fi
tput cup 20 0
figlet -f slant "DONE4US" |lolcat

#done setting up Termux terminal as a real hacker

# setting up making a changes to a termux
# Dir checker 
# dir=.termux
DIR="$HOME/.termux"
 if [ -d "$DIR" ]
then 
  echo
else
  mkdir $HOME/.termux
fi

#files checker
#file=termux.properties
FILE="$HOME/.termux/termux.properties"
if [ -f "$FILE" ]
then 
  echo
else
  cd $HOME/.termux/
  touch termux.properties
fi

# Termux bell characterstics
cd $HOME
echo "bell-character=ignore" >> /data/data/com.termux/files/home/.termux/termux.properties && termux-reload-settings
echo