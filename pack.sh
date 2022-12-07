#!/bin/bash

# Author = Kyle Freidhof

# Created = /12/07/22

# License = GPL3

# Project = unpack.sh


# gives the user info what the script is 
echo "now since the missing dependency got added"
sleep 5

echo "we can repackage discord"
sleep 5

echo "and install it"
sleep 5

echo "note if you did not add the missing dependency"
sleep 5

echo "you will get an error"
sleep 5

echo "you need to add the missing dependency before you run this script"
sleep 5

echo "To install discord"
sleep 5

echo "press enter to continue or ctrl c to exit"
read


# installs discord 

dpkg -b unpack discord-fixed.deb

sudo apt install ./discord-fixed.deb

# removes the broken discord 
rm discord-0.0.21.deb

exit 












