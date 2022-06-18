#! /bin/bash

# Create a directory to contains files
mkdir Slippi_AppImage
cd Slippi_AppImage || exit

# Download the AppImage
wget https://github.com/project-slippi/slippi-launcher/releases/download/v2.5.2/Slippi-Launcher-2.5.2-x86_64.AppImage

# Make the AppImage executabled
chmod a+x Slippi-Launcher-2.5.2-x86_64.AppImage

# Rename and move the AppImage to the binary directory
mv Slippi-Launcher-2.5.2-x86_64.AppImage Slippie-Launcher-x86_64.AppImage
cp -i Slippi-Launcher-x86_64.AppImage /usr/locale/bin

# Download and move the .desktop file
wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Ressources/Slippi/Slippi-Launcher.desktop
cp Slippi-Launcher.desktop /usr/share/applications/

# Delete the directory
cd .. || return
rm -r Slippi_AppImage

# Download and rename the icon png
cd /usr/share/icons || exit
wget https://github.com/project-slippi/slippi-launcher/raw/main/assets/icons/512x512.png
mv 512x512.png slippi-launcher.png

