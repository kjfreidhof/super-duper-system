#!/bin/bash 

# Author = Kyle Freidhof

# Created = /12/07/22

# License = GPL3

# Project = Debian-discord.sh 

# Gives continue a varriable

skip()
{
	echo"This Process wil continue : $1"
	continue








}

# gives user info on what this script does 


echo "this script unpacks discord for debian"
sleep 5
echo "the next script"
sleep 5 
echo "will repackage discord for debian"
sleep 5 
echo "and install it"
sleep 5

# creates the .txt file pkg.txt
touch pkg.txt 

# adds packages to pkg.txt
echo "wget" >> pkg.txt
sleep 3
echo "aria2" >> pkg.txt
sleep 3

# installs packages needed for the script 
sudo cat pkg.txt | xargs apt install -y 

# asks the user if they have discord installed 
# and if not if they would like to install it 
echo "Do you have discord installed[1|2|3|4|]" 
echo "1, yes"
echo "2, no Download using wget"
echo "3, no Download using aria2"
echo "4, exit"

read -rp "= " CHOICE
 

if [ "$CHOICE" = 1 ]; then 
	$skip_str
elif [ "$CHOICE" = 2 ]; then 
	wget https://dl.discordapp.net/apps/linux/0.0.21/discord-0.0.21.deb
	$skip_str

elif [ "$CHOICE" = 3 ]; then 
	aria2c https://dl.discordapp.net/apps/linux/0.0.21/discord-0.0.21.deb
	$skip_str 

elif [ "$CHOICE" = 4 ]; then
	exit 

else

	exit 

fi 

# unpacks discord
dpkg-deb -x discord-0.0.21.deb unpack

dpkg-deb --control discord-0.0.21.deb

mv DEBIAN unpack

# tells the user what they need to do 
# after runing the first part of the script 
echo "The first part is done"
echo "Now use a text editor and change libappindicator3-1 to"
echo "to libayatana-appindicator3-1"
echo "Then run the next script"
echo "Note if you do not change the dependency it will not work"
echo "you must change the dependency"
echo "press enter to exit"
read

exit

