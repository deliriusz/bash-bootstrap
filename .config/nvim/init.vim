set autoindent
syntax on
set number
set ts=3
set sts=3
set sw=3
set expandtab "use spaces instead of tabs

"set path+=**

set backspace=2 " make backspace work like most other programs

set rtp+=/usr/local/opt/fzf "adding fzf to vim

set encoding=utf-8
set enc=utf-8
set fenc=utf-8
set tenc=utf-8

set incsearch
set ignorecase
set smartcase
set list
set listchars=trail:_,tab:>-
set history=200

" make c-n and c-p filter for what you've already typed
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

set cursorline

set backup
set backupdir=/tmp
set dir=/tmp

nnoremap <C-s> :w<CR>
inoremap <C-s> <C-o>:w<CR>
inoremap <C-f><C-f> <C-x><C-f>

" I don't have anything mapped per file type, soe localleader is the same as leader
let g:mapleader = ","
let g:maplocalleader = ','
let mapleader = ","
let maplocalleader=","

" auto close brackets, use <C-v> to escape it
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O

nnoremap <Leader>b :NvimTreeToggle<CR>
nnoremap <Leader>t :Tabularize /
vnoremap <Leader>t :Tabularize /

" unimapired takes care of that
"nnoremap ]b :bn<CR>
"nnoremap [b :bp<CR>

set relativenumber
set nocompatible
nnoremap <C-j> <C-W><C-j> "Ctrl-j to move down a split
nnoremap <C-k> <C-W><C-k> "Ctrl-k to move up a split
nnoremap <C-l> <C-W><C-l> "Ctrl-l to move	right a split
nnoremap <C-h> <C-W><C-h> "Ctrl-h to move left a split
nnoremap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" buffer switch - allow wildcards bar and case insensitive search there
set wildmenu
set wildmode=longest,list,full
set wildignore+=*/tmp/*,*.so,*.swp,.git/*,node_modules  " MacOSX/Linux
set wildignorecase

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'jreybert/vimagit'
Plug 'airblade/vim-gitgutter'

" file explorer
Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'godlygeek/tabular'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'SmiteshP/nvim-navic'
Plug 'feline-nvim/feline.nvim'

Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-which-key'
Plug 'AckslD/nvim-whichkey-setup.lua'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'nvim-lua/plenary.nvim'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
call plug#end()

"settings for vim-airline
set guifont=Literation\ Mono\ Powerline\ 10
let g:Powerline_symbols = 'fancy'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
set laststatus=2
set noshowmode
let g:airline_theme='cool' " please note that for really fine looking toolbar, you have to add fonts for Powerline, otherwise you'll see an underscore characters

set t_Co=256
set termguicolors
"to allow neosolarized, proper Plug is required https://github.com/icymind/NeoSolarized
colorscheme NeoSolarized

set background=dark

let g:startify_bookmarks = [{'c': '~/.config/nvim/init.vim'}, '~/.zshrc']
let g:startify_custom_header = 'startify#center(startify#fortune#cowsay())'

lua<<EOF

local navic = require("nvim-navic")
local feline = require("feline")

--table.insert(components.active[1], {
--   provider = function()
--      return navic.get_location()
--   end,
--   enabled = function()
--      return navic.is_available()
--   end
--})

--feline.setup({ components = components })
--feline.winbar.setup({ components = components })

feline.setup({})
feline.winbar.setup({})
EOF

"lua require("feline-nvim-config")
lua require("lsp-config")
lua require("luasnip-config")
lua require("null-ls-config")
lua require("telescope-config")
lua require("nvim-which-key-config")
lua require("nvim-tree-config")
lua require("treesitter-config")
lua require("diagnostics-config")

set timeoutlen=100

" autocmd - filetype based config
autocmd FileType go setlocal omnifunc=v:lua.vim.lsp.omnifunc
