# Note that installing `sudo` is first needed

# Yay
sudo pacman -S git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Base packages

sudo pacman -S linux-lts vim git gnome networkmanager firefox-developer-edition base-devel gnome-tweaks extra/ttf-dejavu ruby htop iotop terminator x264 bluez bluez-utils inetutils systemd-swap rsync gimp rawtherapee transmission-gtk calibre libreoffice-still scribus
# Related to development (GIS, Python, Postgres, Docker...)
sudo pacman -S python python-rtree geos docker docker-compose postgresql-libs bash-completion qgis bat aws-cli-v2

# nvidia
sudo pacman -S nvidia nvidia-dkms nvidia-lts
yay -S gdm-prime optimus-manager optimus-manager-qt

yay -S nvm dropbox bash-git-prompt jetbrains-toolbox spotify telegram-desktop-bin vlc bfg gnome-shell-extension-appindicator debtap ttf-twemoji libinput-gestures rescuetime2 gnome-shell-extension-tray-icons chromium zoom losslesscut vdhcoapp-bin

sudo systemctl enable --now NetworkManager
sudo systemctl enable --now docker
sudo systemctl enable --now systemd-swap

sudo gpasswd -a $USER docker  # Docker
sudo gpasswd -a $USER input   # libinput-gestures

# Ergodox EZ https://github.com/zsa/wally/wiki/Live-training-on-Linux
sudo groupadd plugdev
sudo gpasswd -a $USER plugdev   # Ergodox

# Make sudo more comfortable
usermod -a -G wheel $USER
# ... and edit, with visudo, uncommenting `%wheel ALL=(ALL) NOPASSWD: ALL`

libinput-gestures-setup autostart
libinput-gestures-setup start
