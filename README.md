# Fedora-Scripts 

**A group of scripts for Fedora**

*I recommand checking the script before executing them so you can see what it will do. It is the nice thing with FOSS.*

## DNF_boost

A script that boost DNF and help enabling certain features of DNF.

### Instructions

```bash
wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Scripts/DNF_boost.sh  
sudo bash DNF_boost.sh
```

## MS_fonts_fedora

A script that install the major Microsoft fonts such as Times New Roman or Arial.

### Instructions

```bash
wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Scripts/MS_fonts_fedora.sh  
sudo bash MS_fonts_fedora.sh
```

## Github_desktop

A script that install the Github desktop software on Fedora.

### Instructions

```bash
wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Scripts/Github_desktop.sh  
bash Github_desktop.sh
```

## ZSH_setup

A script that setup my ZSH config.

### Instructions

```bash
wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Scripts/ZSH_setup.sh  
bash ZSH_setup.sh
```

## DaVinci-Resove_installer.sh

A script that will install DaVinci Resolve.

During the process of the script you will be asked if you want to be redirected to Black Magic Design website to download the ZIP file due to the fact that they don't give access to a long-term link to download the ZIP file.

In the ressources folder, there is a the `kwin` rule file that you can use to fix the bug in `kwin`

### Instructionss

Go into your download folder, or the folder in which you download your files :
```bash
cd ~/Downloads #Or downloads in your language (eg: Téléchargements)
```

```bash
wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Scripts/DaVinci-Resolve_installer.sh  
bash DaVinci-Resolve_installer.sh
```

## Numworks_driver

A script that will download and install the driver for the Numworks calculator.

It will also install Chromium which is necessary to interact with the calculator.

### Instructions

```bash
wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Scripts/Numworks_driver.sh  
bash Numworks_driver.sh
```

## Nvtop_fedora

A script that install the binary of `nvtop`, a monitoring tool for AMD and Nvidia gpus inspired by `htop`.

### Instructions

```bash
wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Scripts/Nvtop_fedora.sh
bash Nvtop_fedora.sh
```

## Slippi

A script that will install the Slippi AppImage system-wide. This script should normally run on any Linux distro that support AppImages.

### Instructions

```bash
wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Scripts/Slippi.sh
bash Slippi.sh
```

## Software_install

A script that will install a set of application from the rpm repos and flatpak repos.

### Instructions

```bash
wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Scripts/Software_install.sh
bash Software_install.sh
```

## VSCodium

A script that will install VSCodium and all the extensions I use.

### Instructionss

```
wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Scripts/VSCodium.sh
bash VSCodium.sh
```

## Homebrew_fedora

A script that will install Homebrew on Fedora.

### Instructions

```
wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Scripts/Homebrew_fedora.sh
bash Homebrew_fedora.sh
```

## Nix_fedora

A script that will install the Nix package manager on Fedora. The script gives the option to choose between multi-user and single user install, for more info refer to the [NixOS documentation](https://nixos.org/download.html).

### Instructions

```
wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Scripts/Nix_fedora.sh
bash Nix_fedora.sh
```

## ProtonVPN

A script that will install the ProtonVPN application as well as setting up the ProtonVPN repo and the AppIndicator extension on GNOME which is recommanded.

### Instructions

```bash
wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Scripts/ProtonVPN.sh
bash ProtonVPN.sh
```

## CMU_fedora

A script that will install the suite of Computer Modern Unicode fonts, notably used by LaTeX. This script is based on yarwelp's [work](https://gist.github.com/yarwelp/392aa0daf6448eb6b05e).

### Instructions

```bash
wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Scripts/CMU_fedora.sh
bash CMU_fedora.sh
```
## Auto-CPUFreq

A script that is going to install or uninstall `auto-cpufreq`.

### Instructions

```bash
wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Scripts/Auto-CPUFreq.sh
bash Auto-CPUFreq.sh
```

## PWA_firefox (Deprecated)

A script that will install everything to setup Progressive Web Apps in Firefox.
