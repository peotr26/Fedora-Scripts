#! /bin/bash

sudo dnf copr enable --assumeyes gloriouseggroll/nobara # Add the Nobara repo.

sudo dnf update --assumeyes --refresh

# Install base nobara packages

sudo dnf install --assumeyes fedora-repos fedora-workstation-repositories nobara-repos nobara-login

# Installing KDE Plasma

sudo dnf install --assumeyes "KDE Plasma Workspaces"

# Installing Nvidia drivers

gpu_type=$(lspci)

if grep -E "Nvidia|GeForce|NVIDIA" <<< ${gpu_type}; then
    echo "Installing Nvidia drivers."
    sudo dnf install -assumeyes akmod-nvidia xorg-x11-drv-nvidia-cuda xorg-x11-drv-nvidia-cuda-libs
fi

# Installing gaming utils

sudo dnf install --assumeyes lutris goverlay protonup-qt protonup mangohud gamescope xpadneo amdgpu-vulkan-switcher

# Installing Xbox controller support

sudo dnf install xone lpf-xone-firmware
lpf approve xone-firmware
lpf build xone-firmware
lpf install xone-firmware

# Installing software throught DNF.

sudo dnf install --assumeyes \
blender \
chromium \
dosbox-staging \
elisa \
@firefox \
gimp \
handbrake \
handbrake-gui \
heroic-games-launcher-bin \
kate \
kdenlive \
kile \
kolourpaint \
ktorrent \
@libreoffice \
libvirt-daemon \
libvirt-daemon-driver \
meshlab \
obs-studio-gamecapture.x86_64 \
obs-studio-gamecapture.i686\
remmina \
steam \
virt-manager \
vlc \
vlc-extras \
vlc-bittorent \
wine \
winetricks \
qemu-img \
qemu-kvm \

# Installing software trhought Flatpak.

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install --assumeyes \
com.play0ad.zeroad \
com.github.micahflee.torbrowser-launcher \
com.github.tchx84.Flatseal \
com.usebottles.bottles \
org.polymc.PolyMC \
org.telegram.desktop \
org.telegram.desktop.webview \
md.obsidian.Obsidian \
com.discordapp.Discord \

# Start services

sudo systemctl enable libvirtd
