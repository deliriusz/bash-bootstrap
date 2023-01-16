-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
   -- Packer can manage itself
   use 'wbthomason/packer.nvim'

   use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
   }

   use({
      'rose-pine/neovim',
      as = 'rose-pine',
      config = function()
         vim.cmd('colorscheme rose-pine')
      end
   })

   use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
   use {'nvim-telescope/telescope-file-browser.nvim'}
   use('nvim-treesitter/playground')
   use('theprimeagen/harpoon')
   use('mbbill/undotree')
   use('tpope/vim-fugitive')
   use('tpope/vim-surround')
   use('tpope/vim-unimpaired')
   use('tpope/vim-commentary')
   use('tpope/vim-repeat')
   use('godlygeek/tabular')

   use('folke/which-key.nvim')

   use {
      'TimUntersberger/neogit',
      requires = 'nvim-lua/plenary.nvim'
   }

   use {
        "startup-nvim/startup.nvim",
        config = function()
          require("startup").setup { theme = "evil" }
        end,
   }

   use {
      'kana/vim-textobj-entire',
      requires = { { 'kana/vim-textobj-user' } }
   }

   use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
         -- LSP Support
         {'neovim/nvim-lspconfig'},
         {'williamboman/mason.nvim'},
         {'williamboman/mason-lspconfig.nvim'},

         -- Autocompletion
         {'hrsh7th/nvim-cmp'},
         {'hrsh7th/cmp-buffer'},
         {'hrsh7th/cmp-path'},
         {'saadparwaiz1/cmp_luasnip'},
         {'hrsh7th/cmp-nvim-lsp'},
         {'hrsh7th/cmp-nvim-lua'},

         -- Snippets
         {'L3MON4D3/LuaSnip'},
         {'rafamadriz/friendly-snippets'},
      }
   }

   use("folke/zen-mode.nvim")

   use {
      'nvim-tree/nvim-tree.lua',
      requires = {
         'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
   }

end)