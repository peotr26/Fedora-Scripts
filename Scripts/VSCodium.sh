#! /bin/bash

sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg

sudo tee -a /etc/yum.repos.d/vscodium.repo << 'EOF'
[gitlab.com_paulcarroty_vscodium_repo]
name=gitlab.com_paulcarroty_vscodium_repo
baseurl=https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/rpms/
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg
metadata_expire=1h
EOF

sudo dnf install -y codium

sudo dnf install -y direnv

codium --install-extension \
formulahendry.code-runner \
foxundermoon.shell-format \
mads-hartmann.bash-ide-vscode \
mkhl.direnv \
MS-CEINTL.vscode-language-pack-fr \
ms-python.python \
ms-toolsai.jupyter \
ms-toolsai.jupyter-keymap \
ms-toolsai.jupyter-renderers \
pinage404.bash-extension-pack \
rogalmic.bash-debug \
timonwong.shellcheck