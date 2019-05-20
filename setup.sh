CONFIGURATION_FILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

HomeDirectories=('.config/fusuma')

HomeDotfiles=('.bash_aliases' '.bashrc' '.config/fusuma/config.yml' '.gitconfig' '.gitignore' '.git-prompt.sh' '.inputrc' '.leptonrc' '.ssh/config' '.vim' '.vimrc' '.zshrc')

for homeDirectory in "${HomeDirectories[@]}"; do
  HOME_DIR_PATH=$HOME/$homeDirectory
  if [ -f $HOME_DIR_PATH ] && [ ! -h $HOME_DIR_PATH ]; then
    echo "$HOME_DIR_PATH exists and it's not a symbolic link"
    exit 1
  fi

  mkdir -p $HOME_DIR_PATH
done

for homeDotFile in "${HomeDotfiles[@]}"; do
  HOME_FILE_PATH=$HOME/$homeDotFile
  if [ -f $HOME_FILE_PATH ] && [ ! -h $HOME_FILE_PATH ]; then
    echo "$HOME_FILE_PATH exists and it's not a symbolic link"
    exit 1
  fi

  DOT_FILE_PATH=$CONFIGURATION_FILES_DIR/$homeDotFile
  ln -sfT $DOT_FILE_PATH $HOME_FILE_PATH
done

sudo apt install -y exfat-fuse exfat-utils vim git libcanberra-gtk-module gnome-tweak-tool clamav lxc lxc-templates cgroup-lite redir bridge-utils npm ngrep terminator virtualenv htop telegram-desktop gparted docker docker-compose postgresql-client powertop darktable python-dev flameshot xclip
