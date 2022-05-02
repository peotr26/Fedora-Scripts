#! /bin/bash

wget https://cdn.numworks.com/assets/files/my/drivers/linux/50-numworks-calculator-f2be8a48f68f1ee4d88c997c35194960.rules
sudo cp 50-numworks-calculator-f2be8a48f68f1ee4d88c997c35194960.rules /etc/udev/rules.d

sudo dnf install --assumeyes chromium
