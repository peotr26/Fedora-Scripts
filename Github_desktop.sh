#! /bin/bash

#rpm --import https://packagecloud.io/shiftkey/desktop/gpgkey
#sh -c 'echo -e "[shiftkey]\nname=GitHub Desktop\nbaseurl=https://packagecloud.io/shiftkey/desktop/el/7/\$basearch\nenabled=1\ngpgcheck=0\nrepo_gpgcheck=1\ngpgkey=https://packagecloud.io/shiftkey/desktop/gpgkey" > /etc/yum.repos.d/shiftkey-desktop.repo'
#dnf install --assumeyes github-desktop
sudo dnf install --assumeyes https://github.com/shiftkey/desktop/releases/download/release-3.0.0-linux1/GitHubDesktop-linux-3.0.0-linux1.rpm