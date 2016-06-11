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
apt-get -y install vim screen terminator curl rake 

curl -L https://bit.ly/janus-bootstrap | bash



