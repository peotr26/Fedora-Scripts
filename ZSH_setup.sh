#! /bin/bash

sudo dnf --assumeyes install zsh

wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

sed -i 's/robbyrussell/bira/g' ~/.zshrc

sed -i 's/plugins=(git)/plugins=(git dnf zsh-autosuggestions)/g' ~/.zshrc

cd $ZSH/Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions

exit
