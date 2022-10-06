#!/bin/bash

INSTALL_COMMAND='sudo apt install'

#programs to install
$INSTALL_COMMAND git tmux neovim python3 golang

# linters for vim to install 
stylish-haskell stylua devopyio/yamlfmt/yamlfmt brew install lua-language-server

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#lsp related
npm i -g bash-language-server stylelint solhint

curl https://sh.rustup.rs -sSf | sh
curl https://bootstrap.pypa.io/get-pip.py > get-pip.py; python3 get-pip.py
pip install yapf pylint python-lsp-server
go install github.com/mgechev/revive@latest # requires go language
go install github.com/jesseduffield/lazygit@latest
cargo install selene


# nvim lsp for golang
dir="${HOME}/.config/nvim/site/pack/nvim-lspconfig/opt/nvim-lspconfig/"
mkdir -p "$dir"
cd "$dir"
git clone 'https://github.com/neovim/nvim-lspconfig.git' .

npm install -g jsonls html

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
