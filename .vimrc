set autoindent
syntax on
set number
set ts=3
set sts=3
set sw=3
set expandtab

set encoding=utf-8
set enc=utf-8
set fenc=utf-8
set tenc=utf-8

set incsearch
set ignorecase
set smartcase
set list
set listchars=trail:_,tab:>-

set cursorline

set relativenumber
set nocompatible
filetype off

nnoremap <C-j> <C-W><C-j> "Ctrl-j to move down a split
nnoremap <C-k> <C-W><C-k> "Ctrl-k to move up a split
nnoremap <C-l> <C-W><C-l> "Ctrl-l to move right a split
nnoremap <C-h> <C-W><C-h> "Ctrl-h to move left a split


" Vundle setup
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim' " this plugin manager
Plugin 'tpope/vim-surround' " 
Plugin 'godlygeek/tabular' " GREAT plugin for auto - identation - :Tabularize /<pattern> , where pattern is a regex to match for alignemnt, e.g. = aligns equal signs
Plugin 'ervandew/supertab' " great intelligent completion - way better that <C-n>
Plugin 'ctrlpvim/ctrlp.vim' " fuzzy finding

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
