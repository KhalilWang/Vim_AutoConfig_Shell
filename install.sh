#!/bin/bash

cp .spf13-vim-3     ~/ -rf
echo "cp .spf13-vim-3     ~/ -rf"
cp .vim             ~/ -rf
echo "cp .vim             ~/ -rf"

if [ ! -e ~/.vimbackup ]; then
    mkdir ~/.vimbackup
    echo "mkdir ~/.vimbackup"
fi

if [ ! -e ~/.vimswap ]; then
    mkdir ~/.vimswap
    echo "mkdir ~/.vimswap"
fi

if [ ! -e ~/.vimundo ]; then
    mkdir ~/.vimundo
    echo "mkdir ~/.vimundo"
fi

if [ ! -e ~/.vimviews ]; then
    mkdir ~/.vimviews
    echo "mkdir ~/.vimviews"
fi

if [ ! -e ~/.vimrc ]; then
    ln -s .spf13-vim-3/.vimrc  ~/.vimrc
    echo "ln -s .spf13-vim-3/.vimrc  ~/.vimrc"
fi

if [ ! -e ~/.vimrc.before ]; then
    ln -s .spf13-vim-3/.vimrc.before  ~/.vimrc.before
    echo "ln -s .spf13-vim-3/.vimrc.before  ~/.vimrc.before"
fi

if [ ! -e ~/.vimrc.bundles ]; then
    ln -s .spf13-vim-3/.vimrc.bundles  ~/.vimrc.bundles
    echo "ln -s .spf13-vim-3/.vimrc.bundles  ~/.vimrc.bundles"
fi

touch ~/.vimrc.local
echo "touch ~/.vimrc.local"

echo "install OK"
