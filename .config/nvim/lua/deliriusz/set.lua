vim.opt.autoindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ts = 3
vim.opt.sts = 3
vim.opt.sw = 3

vim.opt.expandtab = true
vim.opt.wrap = true

-- vim.opt.backspace = 2

vim.opt.timeoutlen = 500

vim.opt.rtp:append { '/usr/local/opt/fzf' } --adding fzf to vim

vim.opt.encoding = "utf-8"
vim.opt.enc = "utf-8"
vim.opt.fenc = "utf-8"
vim.opt.tenc = "utf-8"

vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.list = true
--vim.opt.listchars = { space = '_', tab = '>-' }
vim.opt.listchars = { tab = '>-' }
vim.opt.history = 200

vim.opt.cursorline = true

vim.opt.backup = true
vim.opt.backupdir = "/tmp"
vim.opt.dir = "/tmp"

vim.opt.clipboard = 'unnamedplus'

--  buffer switch - allow wildcards bar and case insensitive search there
-- vim.opt.wildmenu
-- vim.opt.wildmode=longest,list,full
-- vim.opt.wildignore+=*/tmp/*,*.so,*.swp,.git/*,node_modules  " MacOSX/Linux
-- vim.opt.wildignorecase
