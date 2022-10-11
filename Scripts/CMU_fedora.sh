#! /bin/bash

sudo dnf install texlive-cm-unicode
mkdir -p ~/.fonts/
dnf repoquery -l texlive-cm-unicode | grep -E '\.otf$' \
  | xargs -I{} ln -s {} ~/.fonts/
fc-cache -f ~/.fonts/