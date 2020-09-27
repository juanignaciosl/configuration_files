# Note that installing `sudo` is first needed

# Yay
sudo pacman -S git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Base packages

sudo pacman -S vim git gnome networkmanager firefox-developer-edition base-devel gnome-tweaks extra/ttf-dejavu ruby htop terminator x264 docker bluez bluez-utils inetutils

yay -S nvm dropbox bash-git-prompt jetbrains-toolbox spotify telegram-desktop-bin vlc bfg gnome-shell-extension-appindicator debtap ttf-twemoji libinput-gestures rescuetime2 gnome-shell-extension-tray-icons

# libinput-gestures requires running `libinput-gestures-setup start`

sudo systemctl enable NetworkManager
