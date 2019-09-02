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
apt-get -y install vim screen terminator curl rake git fail2ban snap docker docker-compose
apt-get -y install open-vm-tools-desktop

## remove shopping lenses from ubuntu
sudo apt-get remove -y unity-webapps-common unity-lens-shopping

## replace german folders with english folders
ls -d /home/*/* | grep -q "Desktop"
if [ $? -ne 1 ]; then
  echo "replace german folders with english folders"
  LC_ALL=C xdg-user-dirs-update --force
  gsettings set org.gnome.desktop.background show-desktop-icons true
fi

## install pycharm
## sudo snap install pycharm-community --classic
sudo snap install pycharm-professional --classic



cd /tmp
curl -L https://bit.ly/janus-bootstrap | bash

