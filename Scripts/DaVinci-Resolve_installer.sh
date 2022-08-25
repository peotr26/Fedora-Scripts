#! /bin/bash

sudo dnf install -y alsa-plugins-pulseaudio


while true; do 
    gpu_vendor=$(glxinfo | grep "OpenGL vendor string:")
    case ${gpu_vendor} in
        ["OpenGL vendor string: AMD"]* )
            while true; do
                repo_nobara=$(dnf repolist | grep "nobara-rocm")
                case ${repo_nobara} in
                    ["nobara-rocm"]* ) sudo dnf install -y rocm-opencl; break;;
                    * ) echo "You will need to install yourself the AMD proprietary OpenCL driver to use Resolve."; break;;
                esac
            done;
            break;;
        * ) break;;
    esac
done

while true; do
    read -rp "Do you want to be redirected to the website to download the ZIP ? [Y/n]" yn
    case $yn in
        [Yy]* ) xdg-open https://www.blackmagicdesign.com/products/davinciresolve; break;;
        [Nn]* ) break;;
        * ) xdg-open https://www.blackmagicdesign.com/products/davinciresolve; break;;
    esac
done

read -rp "What is you version number ?" $'Version'

echo "$Version"

unzip 'DaVinci_Resolve_*_Linux.zip'

./'DaVinci_Resolve_'"$Version"'_Linux.run' -i

while true; do
    read -rp "Do you use Kwin as a window manager [y/N]" yn
    case $yn in
        [Yy]* ) wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Ressources/DaVinci-Resolve_Installer/Kwin_Fix.txt; cat Kwin_Fix.txt >> ~/.config/kwinrulesrc; break;;
        [Nn]* ) break;;
        * ) break;;
    esac
done
