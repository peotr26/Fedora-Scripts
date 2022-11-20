#! /bin/bash

# Creating the temporary directory.
mkdir temp_acq
cd temp_acq || exit

# Download and extract the fils.
wget https://github.com/AdnanHodzic/auto-cpufreq/archive/refs/tags/v1.9.6.tar.gz
tar -xzf v1.9.6.tar.gz
cd auto-cpufreq-1.9.6 || exit

# Installing and enabling the daemon.
sudo ./auto-cpufreq-installer
sudo auto-cpufreq --install
sudo systemctl enable --now auto-cpufreq

# Remove the temporary directory.
cd .. || exit
cd .. || exit
sudo rm -rf temp_acq