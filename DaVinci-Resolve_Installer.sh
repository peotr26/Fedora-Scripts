#! /bin/bash

while true; do
    read -p "Do you want to be redirected to the website to download the ZIP ? [Y/n]" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) xdg-open https://www.blackmagicdesign.com/support/download/f73a0db92053469f8b0032cf1f4bb220/Linux ; break;;
        * ) break;;
    esac
done

read -p "What is you version number ?" $'Version'

echo $Version

unzip 'DaVinci_Resolve_'$Version'_Linux.zip'
cd 'DaVinci_Resolve_'$Version'_Linux'

./'DaVinci_Resolve_'$Version'_Linux.run'

while true; do
    read -p "Do you use Kwin as a window manager [y/N]" yn
    case $yn in
        [Yy]* ) wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Ressources/DaVinci-Resolve_Installer/Kwin_Fix.txt; cat Kwin_Fix.txt >> ~/.config/kwinrulesrc; break;;
        [Nn]* ) break;;
        * ) break;;
    esac
done
