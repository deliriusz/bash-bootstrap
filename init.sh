#!/bin/bash

#programs to install
git tmux neovim fzf node python3 golang

# linters for vim to install 
stylish-haskell stylua devopyio/yamlfmt/yamlfmt brew install lua-language-server

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#lsp related
npm i -g bash-language-server stylelint solhint

curl https://sh.rustup.rs -sSf | sh
curl https://bootstrap.pypa.io/get-pip.py > get-pip.py; python3 get-pip.py
pip install yapf pylint python-lsp-server
go install github.com/mgechev/revive@latest # requires go language
cargo install selene


# nvim lsp for golang
dir="${HOME}/.local/share/nvim/site/pack/nvim-lspconfig/opt/nvim-lspconfig/"
mkdir -p "$dir"
cd "$dir"
git clone 'https://github.com/neovim/nvim-lspconfig.git' .

npm install -g jsonls html

