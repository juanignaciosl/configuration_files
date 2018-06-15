CONFIGURATION_FILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

HomeDotfiles=('.vimrc' '.bashrc' '.inputrc' '.zshrc')

for homeDotFile in "${HomeDotfiles[@]}"; do
  DOT_FILE_PATH=$CONFIGURATION_FILES_DIR/$homeDotFile
  ln -s $DOT_FILE_PATH ~/
done
