#!/bin/bash

sudo apt update && \
sudo apt install -y git wget libncurses5-dev curl

# Install vim8 with python3interp
wget https://github.com/vim/vim/archive/v8.1.1006.tar.gz
tar -xzf v8.1.1006.tar.gz
cd vim-8.1.1006/
./configure --enable-python3interp=yes && make && sudo make install

mkdir -p /home/allanl/.vim/autoload /home/allanl/.vim/bundle && curl -LSso /home/allanl/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

sudo apt install -y build-essential cmake python3-dev python-dev && \
git clone https://github.com/Valloric/YouCompleteMe.git /home/allanl/.vim/bundle/YouCompleteMe && \
cd /home/allanl/.vim/bundle/YouCompleteMe && git submodule update --init --recursive && cd /home/allanl && \
/home/allanl/.vim/bundle/YouCompleteMe/install.py --clang-completer --go-completer

sudo apt install -y silversearcher-ag
git clone https://github.com/morhetz/gruvbox.git /home/allanl/.vim/bundle/gruvbox.git
git clone https://github.com/aklt/plantuml-syntax.git /home/allanl/.vim/bundle/plantuml-syntax
git clone https://github.com/tpope/vim-eunuch /home/allanl/.vim/bundle/vim-eunuch
git clone https://github.com/fatih/vim-go.git /home/allanl/.vim/bundle/vim-go
git clone https://github.com/junegunn/fzf /home/allanl/.vim/bundle/fzf
git clone https://github.com/w0rp/ale /home/allanl/.vim/bundle/ale
git clone https://github.com/junegunn/fzf.vim /home/allanl/.vim/bundle/fzf.vim
git clone https://github.com/itchyny/lightline.vim /home/allanl/.vim/bundle/lightline.vim
git clone https://github.com/terryma/vim-multiple-cursors /home/allanl/.vim/bundle/vim-multiple-cursors
git clone https://github.com/tpope/vim-surround /home/allanl/.vim/bundle/vim-surround
git clone https://github.com/ekalinin/Dockerfile.vim.git /home/allanl/.vim/bundle/Dockerfile
git clone https://github.com/scrooloose/nerdtree /home/allanl/.vim/bundle/nerdtree
git clone https://github.com/rhysd/vim-clang-format.git /home/allanl/.vim/bundle/vim-clang-format
git clone https://github.com/kovisoft/slimv.git /home/allanl/.vim/bundle/slimv
git clone https://github.com/integralist/vim-mypy ~/.vim/bundle/vim-mypy

wget https://raw.githubusercontent.com/protocolbuffers/protobuf/master/editors/proto.vim && \
mkdir -p /home/allanl/.vim/syntax && mv proto.vim /home/allanl/.vim/syntax/proto.vim
