#!/bin/bash

chmod +x setup/create_symlink.sh && setup/create_symlink.sh

# if OS is macOS
if [ "$(uname)" == 'Darwin' ]; then
    brew install fzf
    $(brew --prefix)/opt/fzf/install --all
fi
