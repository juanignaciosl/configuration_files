CARTO_CONFIGURATION_FILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

OVERRIDABLE_FILES=("$HOME/.vimrc" "$HOME/.tmuxinator/cartodb.yml")

for overridable_file in "${OVERRIDABLE_FILES[@]}"; do
  if [ -f $overridable_file ]
  then
    if [ ! -h $overridable_file ]
    then
      echo "Creating backup of $overridable_file"
      mv $overridable_file $overridable_file.bak
    fi
  fi
done

ln -sf $CARTO_CONFIGURATION_FILES_DIR/../.vimrc ~/.vimrc
ln -sf $CARTO_CONFIGURATION_FILES_DIR/tmuxinator/cartodb.yml ~/.tmuxinator/
