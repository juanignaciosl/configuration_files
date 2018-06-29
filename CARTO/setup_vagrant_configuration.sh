# This is meant to be run outside the Vagrant machine
CARTO_CONFIGURATION_FILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -sf $CARTO_CONFIGURATION_FILES_DIR/.carto-dev-cfg.yml $HOME
