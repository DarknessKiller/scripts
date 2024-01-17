#!/bin/sh

# Print a welcome message
echo "Welcome to DarknessKiller's Android Build Environment Setup (Tested on Ubuntu 22.04)"

# Update the Ubuntu APT package lists
echo "Updating Ubuntu APT..."
sudo apt-get update

# Install base environment packages
echo "Installing Base Environment Packages... (taken from android website...)"
sudo apt-get -y install git-core gnupg flex bison build-essential zip curl zlib1g-dev libc6-dev-i386 libncurses5 x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig git-lfs

# Install required environment packages
echo "Installing Required Environment Packages..."
sudo apt-get -y install libssl-dev bc ccache libtinfo5

# Install more environment packages
echo "Installing More Environment Packages..."
sudo add-apt-repository universe && sudo apt-get update
sudo apt-get -y install libncurses5

# Install the 'repo' command
echo "Installing 'repo' command..."
sudo apt-get -y install repo

# Print a completion message
echo "Completed Android Build Environment Setup... DONE"