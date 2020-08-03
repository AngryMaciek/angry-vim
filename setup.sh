#!/usr/bin/env bash

###############################################################################
#
#   Setup script for the Vim configuration
#
#   AUTHOR: Maciej_Bak
#   AFFILIATION: Swiss_Institute_of_Bioinformatics
#   CONTACT: wsciekly.maciek@gmail.com
#   CREATED: 13-07-2020
#   LICENSE: MIT
#
###############################################################################

cd $HOME

# prepare the directories
mkdir -p .vim/colors
mkdir -p .vim/pack/packages/start

# backup current vim config file
mv .vimrc .vimrc-backup

# link the new dotfile
ln -s $HOME/angry-vim/vimrc .vimrc

# install molokai color scheme
git clone https://github.com/AngryMaciek/molokai.git .vim/colors/molokai
ln -s $HOME/.vim/colors/molokai/colors/molokai.vim .vim/colors/molokai.vim

# install vim-airline
git clone https://github.com/AngryMaciek/vim-airline.git .vim/pack/packages/start/vim-airline

# install vim-fugitive
git clone https://github.com/AngryMaciek/vim-fugitive.git .vim/pack/packages/start/vim-fugitive

# install vim-gitgutter
git clone https://github.com/AngryMaciek/vim-gitgutter.git .vim/pack/packages/start/vim-gitgutter
