# Note that installing `sudo` is first needed

# Yay
sudo pacman -S git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Base packages

sudo pacman -S vim git gnome networkmanager firefox-developer-edition base-devel gnome-tweaks extra/ttf-dejavu ruby htop terminator x264 docker

yay -S dropbox bash-git-prompt intellij-toolbox spotify telegram-desktop-bin vlc bfg
