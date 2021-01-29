# Note that installing `sudo` is first needed

# Yay
sudo pacman -S git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Base packages

sudo pacman -Sy linux-lts vim git gnome networkmanager firefox-developer-edition base-devel gnome-tweaks extra/ttf-dejavu ruby htop iotop terminator x264 bluez bluez-utils inetutils systemd-swap rsync transmission-gtk calibre libreoffice-still scribus pigz p7zip signal-desktop ntfs-3g
# Related to development (GIS, Python, Postgres, Docker...)
sudo pacman -Sy python python-rtree geos docker docker-compose postgresql-libs bash-completion qgis bat aws-cli-v2 ttf-jetbrains-mono
# Image
sudo pacman -Sy gimp rawtherapee
# Video
sudo pacman -Sy simplescreenrecorder openshot

# nvidia
sudo pacman -Sy nvidia nvidia-dkms nvidia-lts
yay -Sy gdm-prime optimus-manager optimus-manager-qt

yay -Sy nvm dropbox bash-git-prompt jetbrains-toolbox spotify telegram-desktop-bin vlc bfg gnome-shell-extension-appindicator debtap ttf-twemoji ttf-times-new-roman libinput-gestures rescuetime2 gnome-shell-extension-tray-icons chromium zoom losslesscut vdhcoapp-bin

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



# Show dng raw files preview: edit /usr/share/thumbnailers/gdk-pixbuf-thumbnailer.thumbnailer adding
# image/x-xpixmap;image/x-canon-cr2;image/x-adobe-dng;
# Installing raw-thumbnailer might be needed.
