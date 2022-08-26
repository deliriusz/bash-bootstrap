#!/bin/bash

#programs to install
git tmux neovim fzf node python3 golang

# linters for vim to install 
stylish-haskell stylua devopyio/yamlfmt/yamlfmt

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#lsp related
npm i -g bash-language-server stylelint solhint

curl https://sh.rustup.rs -sSf | sh
curl https://bootstrap.pypa.io/get-pip.py > get-pip.py; python3 get-pip.py
pip install yapf pylint
go install github.com/mgechev/revive@latest # requires go language
cargo install selene

