#!/usr/bin/env bash
set -eu

if [[ ! -f ~/.vim/autoload/plug.vim ]]; then
    plug_url=https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs $plug_url
fi

vim +'PlugInstall --sync' +qa >/dev/null