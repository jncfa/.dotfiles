#!/bin/bash

# get dir of the current script
script_dir=$(dirname -- "$( readlink -f -- "$0"; )";)

# install brew if not installed
if ! command -v brew >/dev/null 2>&1; then
    echo "Homebrew not found, installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# install dependencies for nvim
brew install -q neovim ripgrep ccls

# symlink to nvim config
ln -s $script_dir/nvim ~/.config/nvim

