CONFIGURATION_FILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

HomeDotfiles=('.bash_aliases' '.bashrc' '.gitconfig' '.gitignore' '.inputrc' '.profile' '.vimrc' '.config/libinput-gestures.conf')

for homeDotFile in "${HomeDotfiles[@]}"; do
  HOME_FILE_PATH=$HOME/$homeDotFile
  if [ -f $HOME_FILE_PATH ] && [ ! -h $HOME_FILE_PATH ]; then
    echo "$HOME_FILE_PATH exists and it's not a symbolic link"
    exit 1
  fi

  DOT_FILE_PATH=$CONFIGURATION_FILES_DIR/$homeDotFile
  ln -sfT $DOT_FILE_PATH $HOME_FILE_PATH
done

sudo systemctl start gdm

echo 'Check that you''re using Xorg, not Wayland'
echo 'Configure optimus-manager https://github.com/Askannz/optimus-manager#configuration'
echo 'Configure swap https://wiki.archlinux.org/index.php/Swap'
