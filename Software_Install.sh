#! /bin/bash

sudo dnf copr enable --assumeyes gloriouseggroll/nobara # Add the Nobara repo.

sudo dnf update --assumeyes --refresh

# Install base nobara packages

sudo dnf install --assumeyes fedora-repos fedora-workstation-repositories nobara-repos nobara-login

# Installing the DE

sudo dnf install --assumeyes "KDE Plasma Workspaces"

# Installing Nvidia drivers

gpu_type=$(lspci)

if grep -E "Nvidia|GeForce|NVIDIA" <<< ${gpu_type}; then
    echo "Installing Nvidia drivers."
    sudo dnf install -assumeyes akmod-nvidia xorg-x11-drv-nvidia-cuda xorg-x11-drv-nvidia-cuda-libs
fi

# Installing Xbox controller support

sudo dnf install xone lpf-xone-firmware
lpf approve xone-firmware
lpf build xone-firmware
lpf install xone-firmware
