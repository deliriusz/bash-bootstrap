-- I don't have anything mapped per file type, soe localleader is the same as leader
vim.g.mapleader = ","
vim.g.maplocalleader=","

-- make c-n and c-p filter for what you've already typed
vim.keymap.set("c", "<C-p>",  "<Up>")
vim.keymap.set("c", "<C-n>", "<Down>")

vim.keymap.set("n", "<C-s>", "<cmd>w<CR>")
vim.keymap.set("i", "<C-s>", "<C-o><cmd>w<CR>")
vim.keymap.set("i", "<C-f><C-f>", "<C-x><C-f>")

vim.keymap.set("n", "<leader>b", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>t", ":Tabularize /")
vim.keymap.set("v", "<leader>t", ":Tabularize /")

vim.keymap.set("n", "<C-j>", "<C-W><C-j>") -- Ctrl-j to move down a split
vim.keymap.set("n", "<C-k>", "<C-W><C-k>") -- Ctrl-k to move up a split
vim.keymap.set("n", "<C-l>", "<C-W><C-l>") -- Ctrl-l to move	right a split
vim.keymap.set("n", "<C-h>", "<C-W><C-h>") -- Ctrl-h to move left a split
vim.keymap.set("n", "<leader>h", "<cmd>nohls<CR>")

-- center screen after jumping half page
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- in block visual selection move selected lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- quickly go between tabs
vim.keymap.set("n", "11", "1gt")
vim.keymap.set("n", "22", "2gt")
vim.keymap.set("n", "33", "3gt")
vim.keymap.set("n", "44", "4gt")
vim.keymap.set("n", "55", "5gt")
vim.keymap.set("n", "66", "6gt")
vim.keymap.set("n", "77", "7gt")
vim.keymap.set("n", "88", "8gt")
vim.keymap.set("n", "99", "9gt")
