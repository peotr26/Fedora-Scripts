#! /bin/bash

echo "Installing dependencies to compile Homebrew"
sudo dnf groupinstall "Development Tools"

echo "Installing Homebrew"
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" >> ~/.bash_profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"