#/bin/bash

clear

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "                    fancy install script                                "
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"


##check for root privileges
if [[ $(id -u) -ne 0 ]] ; then
    echo "Please run as root!!"
    exit 1
fi

## update and install packages
apt-get update
apt-get -y install vim screen terminator curl rake git open-vm-tools-desktop


## replace german folders with english folders
ls -d /home/*/* | grep -q "Desktop"
if [ $? -ne 1 ]; then
  echo "replace german folders with english folders"
  LC_ALL=C xdg-user-dirs-update --force
  gsettings set org.gnome.desktop.background show-desktop-icons true
fi


cd /tmp
curl -L https://bit.ly/janus-bootstrap | bash

