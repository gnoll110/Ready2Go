#!/bin/bash
echo ---------------------------------
echo Welcome to the Ready2Go installer
echo ---------------------------------
read -p "press [enter] to continue..."
cd /home/pi && mkdir Ready2Go-sys && cd Ready2Go-sys
rm -rf build-cgminer.sh
wget https://raw.github.com/arjitc/Ready2Go/master/build-cgminer.sh
chmod +x build-cgminer.sh
./build-cgminer.sh
echo ---------------------------------
echo Install [1/2] done ...
echo ---------------------------------
wait 2
cd ..
rm -rf update.sh
wget https://raw.github.com/arjitc/Ready2Go/master/update.sh
chmod +x update.sh
alias update="./update.sh"
alias cgminer="cgminer"
echo ---------------------------------
echo Install done !
echo Two things to remember -for now-
echo 1. To update your cgminer version type   update   and it will update
echo 2. To start mining type   cgminer   and cgminer will launch
echo ----------------------------------


