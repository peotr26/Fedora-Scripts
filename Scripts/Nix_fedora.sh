#! /bin/bash

while true; do
    echo "Do you want to have a multi-user or single-user installation, if you want more information check: https://nixos.org/download.html:"
    read -rp "M: multi-user; S: single-user" ms
    case $ms in
        [Mm]* ) sh <(curl -L https://nixos.org/nix/install) --daemon; break;;
        [Ss]* ) sh <(curl -L https://nixos.org/nix/install) --no-daemon; break;;
        * ) break;;
    esac
done

sudo semanage fcontext -a -t etc_t '/nix/store/[^/]+/etc(/.*)?'
sudo semanage fcontext -a -t lib_t '/nix/store/[^/]+/lib(/.*)?'
sudo semanage fcontext -a -t systemd_unit_file_t '/nix/store/[^/]+/lib/systemd/system(/.*)?'
sudo semanage fcontext -a -t man_t '/nix/store/[^/]+/man(/.*)?'
sudo semanage fcontext -a -t bin_t '/nix/store/[^/]+/s?bin(/.*)?'
sudo semanage fcontext -a -t usr_t '/nix/store/[^/]+/share(/.*)?'
sudo semanage fcontext -a -t var_run_t '/nix/var/nix/daemon-socket(/.*)?'
sudo semanage fcontext -a -t usr_t '/nix/var/nix/profiles(/per-user/[^/]+)?/[^/]+'