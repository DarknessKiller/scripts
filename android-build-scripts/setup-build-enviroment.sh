#/bin/sh
echo "Welcome to DarknessKiller's Android Build Enviroment Setup (Tested on Ubuntu 22.04)"
echo "Updating Ubuntu APT..."
sudo apt-get update
echo "Installing Base Enviroment Packages... (taken from android website...)"
sudo apt-get install git-core gnupg flex bison build-essential zip curl zlib1g-dev libc6-dev-i386 libncurses5 x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig
echo "Installing Required Enviroment Packages..."
sudo apt install libssl-dev libncurses5 bc ccache
echo "Installing 'repo' command..."
sudo apt-get install repo
echo "Completed Android Build Enviroment Setup... DONE"