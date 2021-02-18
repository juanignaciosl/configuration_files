#!/bin/bash

set -ex

# Note that installing `sudo` is first needed

# Yay
sudo pacman -Sy --noconfirm git base-devel
rm -rf ./yay/
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

# Base packages

# gdm can't be automatically installed if gdm-prime is present
yay -R --noconfirm gdm-prime || true
sudo pacman -Sy --noconfirm archlinux-keyring
sudo pacman -Sy --noconfirm linux-lts man-db man-pages vim git gnome networkmanager firefox-developer-edition gnome-tweaks extra/ttf-dejavu ruby htop iotop terminator x264 bluez bluez-utils inetutils systemd-swap rsync transmission-gtk calibre libreoffice-still scribus pigz p7zip signal-desktop ntfs-3g
# Related to development (GIS, Python, Postgres, Docker...)
sudo pacman -Sy --noconfirm python python-rtree geos docker docker-compose postgresql-libs bash-completion qgis bat ttf-jetbrains-mono
# Image
sudo pacman -Sy --noconfirm gimp rawtherapee
# Video
sudo pacman -Sy --noconfirm simplescreenrecorder openshot

# nvidia
sudo pacman -Sy --noconfirm nvidia nvidia-dkms nvidia-lts
sudo pacman -R --noconfirm gdm # Installing gdm-prime triggers a conflict if gdm is installed
sudo pacman -S wmctrl xdotool # For libinput-gestures to work
yay -Sy --answerclean N --answerdiff N --noconfirm gdm-prime optimus-manager optimus-manager-qt libinput-gestures

# There's a dependency to python-botocore-v2-git that doesn't allow automatic confirmation because of a conflict with python-botocore
yay -R --noconfirm python-botocore || true
yay -Sy --answerclean N --answerdiff N --noconfirm aws-cli-v2 nvm dropbox bash-git-prompt jetbrains-toolbox spotify telegram-desktop-bin vlc bfg gnome-shell-extension-appindicator debtap ttf-twemoji ttf-times-new-roman libinput-gestures rescuetime2 gnome-shell-extension-tray-icons chromium losslesscut-bin vdhcoapp-bin zoom

sudo systemctl enable --now NetworkManager
sudo systemctl enable --now docker
sudo systemctl enable --now systemd-swap

sudo gpasswd -a $USER docker  # Docker
sudo gpasswd -a $USER input   # libinput-gestures

# Ergodox EZ https://github.com/zsa/wally/wiki/Live-training-on-Linux
sudo groupadd -f plugdev
sudo gpasswd -a $USER plugdev   # Ergodox

libinput-gestures-setup autostart
libinput-gestures-setup start



# Show dng raw files preview: edit /usr/share/thumbnailers/gdk-pixbuf-thumbnailer.thumbnailer adding
# image/x-xpixmap;image/x-canon-cr2;image/x-adobe-dng;
# Installing raw-thumbnailer might be needed.
