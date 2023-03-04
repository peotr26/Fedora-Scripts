#! /bin/bash

sudo dnf -y install zsh git

wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

sed -i 's/robbyrussell/bira/g' ~/.zshrc

sed -i 's/plugins=(git)/plugins=(git dnf zsh-autosuggestions)/g' ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions

exit
