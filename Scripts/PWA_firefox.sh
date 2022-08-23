#! /bin/bash

wget https://addons.mozilla.org/firefox/downloads/file/3886665/progressive_web_apps_for_firefox-fx.xpi
firefox -install-global-extension progressive_web_apps_for_firefox-fx.xpi

Arch=$(uname -m)

wget 'https://github.com/filips123/PWAsForFirefox/releases/download/v1.4.2/firefoxpwa-1.4.2-1.'"$Arch"'.rpm'
sudo dnf install -y 'firefoxpwa-1.4.2-1.'"$Arch"'.rpm'
