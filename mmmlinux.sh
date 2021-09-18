#!/bin/bash

# cmdlette's Minimal Manjaro setup
# for work & play

sudo pacman -Syu

# utilities
sudo pacman -S yay zsh wine wine-mono wine-gecko wine-staging winetricks python python-pip git snapd binutils base-devel webkit2gtk

# get zsh autosuggestions and highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
cp .zshrc $HOME/.zshrc

# libs and BNET/other app dependencies
sudo pacman -S   vkd3d lib32-vkd3d gvfs giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader glibc alsa-lib gcc-libs gconf libnotify nspr nss libxss libxtst libc++ notify-osd dunst

# productivity - music, vpn, writing, etc.
sudo snap install foobar2000 notepad-plus-plus
yay -S netextender libreoffice

# fix permissions for netextender
sudo chmod 4755 /usr/sbin/pppd

# fun time
sudo pacman -S lutris steam-manjaro discord
