#/bin/bash

clear

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "                    fancy install script                                "
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"


#check for root privileges 
if [[ $(id -u) -ne 0 ]] ; then 
    echo "Please run as root!!"
    exit 1
fi



apt-get update
apt-get install vim screen terminator 




cp vim/vimrc /usr/share/vim/vimrc
