#!/usr/bin/env bash

# Install packages
sudo pacman -S - < pkglist.txt

# Set fish as shell
chsh -s /usr/bin/fish

# Apply stow
stow --adopt files