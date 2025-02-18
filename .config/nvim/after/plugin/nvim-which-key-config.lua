local wk = require("which-key")

-- local keymap = {
--    w = {
--       name = "+write",
--       w = { "<cmd>w!<CR>", "save file" },
--       q = { "ZQ", "close without saving" },
--       e = { "ZZ", "close with saving" },
--       a = { "<cmd>wa!<CR>", "save all" },
--    },
--    s = {
--       name = "+session",
--       n = { ":PossessionSave ",   "create a new session" },
--       s = { ":PossessionSave!<CR>",   "save a session" },
--       l = { ":PossessionLoad<CR>", "load a session" },
--       r = { ":PossessionDelete<CR>", "remove a session" },
--    },
--    e = { "<cmd>enew<CR>", "new buffer" },
--    a = {
--       name = "+aerial",
--       a = { "<cmd>AerialToggle!<CR>", "list toggle" },
--    },
--    o = {
--       name = "+open",
--       d = {
--          name = "+definition",
--          v = { "<cmd>vsplit<CR>gd<cmd>wincmd p<CR>", "vertical" },
--          h = { "<cmd>split<CR>gd<cmd>wincmd p<CR>", "horizontal" },
--          t = { "<cmd>Telescope command_history<CR>", "new tab" },
--       },
--    },
--    f = {
--       name = "+find",
--       a = { "<cmd>Telescope find_files<CR>", "any files" },
--       w = { "<cmd>Telescope aerial<CR>", "(w)functions" },
--       f = { "<cmd>Telescope git_files<CR>", "git files" },
--       b = { "<cmd>Telescope buffers<CR>", "buffers" },
--       h = { "<cmd>Telescope help_tags<CR>", "help tags" },
--       o = { "<cmd>Telescope oldfiles<CR>", "old files" },
--       r = { "<cmd>Telescope resume<CR>", "resume last" },
--       n = { '<cmd>Telescope neoclip "<CR>', "neoclip" },
--       l = { '<cmd>Telescope live_grep_args<CR>', "live grep" },
--       i = { '<cmd>Telescope live_grep_args default_text=function\\ <CR>', "live grep funtion" },
--       k = { "<cmd>Telescope keymaps<CR>", "keymap" },
--       j = { "<cmd>Telescope jumplist<CR>", "jumplist" },
--       d = { "<cmd>Telescope diagnostics<CR>", "diagnostics" },
--       s = { "<cmd>Telescope possession list<CR>", "session list" },
--       c = {
--          name = "+commands",
--          c = { "<cmd>Telescope commands<CR>", "commands" },
--          h = { "<cmd>Telescope command_history<CR>", "history" },
--       },
--       q = { "<cmd>Telescope quickfix<CR>", "quickfix" },
--       g = {
--          name = "+git",
--          g = { "<cmd>Telescope git_commits<CR>", "commits" },
--          c = { "<cmd>Telescope git_bcommits<CR>", "bcommits" },
--          b = { "<cmd>Telescope git_branches<CR>", "branches" },
--          s = { "<cmd>Telescope git_status<CR>", "status" },
--       },
--    },
--    g = {
--       name = "+git",
--       g = { "<cmd>Neogit<CR>", "Neogit" },
--       c = { "<cmd>Telescope git_bcommits<CR>", "bcommits" },
--       b = { "<cmd>Telescope git_branches<CR>", "branches" },
--       s = { "<cmd>Telescope git_status<CR>", "status" },
--       p = { "<cmd>GitGutterPrevHunk<CR>", "previous hunk" },
--       t = { "<cmd>GitGutterToggle<CR>", "toogle gutter" },
--       n = { "<cmd>GitGutterNextHunk<CR>", "next hunk" },
--       x = { "<cmd>GitGutterPreviewHunk<CR>", "preview hunk" },
--       a = { "<cmd>GitGutterStageHunk<CR>", "stage hunk" },
--    },
--    l = {
--       name = "+lsp",
--       l = { "<cmd>lua vim.diagnostic.setloclist()<CR>", "set loc list" },
--       f = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "format" },
--       d = { "<cmd>lua vim.diagnostic.open_float()<CR>", "diagnostic" },
--       t = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "type definition" },
--       r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "rename" },
--       c = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "code action" },
--       w = {
--          name = "+workspace",
--          g = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "add workspace folder" },
--          c = { "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", "remove workspace folder" },
--          b = { "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", "list workspace folders" },
--       },
--    },
--    q = {
--       name = "+quickfix",
--       q = { "<cmd>copen<CR>", "open" },
--       c = { "<cmd>cclose<CR>", "close" },
--       j = { "<cmd>cnewer<CR>", "next quickfix list" },
--       k = { "<cmd>colder<CR>", "prev quickfix list" },
--       l = { "<cmd>chistory<CR>", "quickfix list history" },
--       f = { "<cmd>Telescope quickfix<CR>", "find in quickfix" },
--    },
--    m = {
--       name = "+move split",
--       h = { "<C-w>H", "⬅️" },
--       j = { "<C-w>J", "⬇️" },
--       k = { "<C-w>K", "⬆️" },
--       l = { "<C-w>L", "➡️" },
--    },
-- }

-- wk.register(keymap, {
--    prefix = ' ',
--    timeoutlen = '0'
-- })

wk.add({
    { " a", group = "aerial" },
    { " aa", "<cmd>AerialToggle!<CR>", desc = "list toggle" },
    { " af", "<cmd>Telescope aerial<CR>", desc = "functions" },
    { " e", "<cmd>enew<CR>", desc = "new buffer" },
    { " f", group = "find" },
    { " fa", "<cmd>Telescope find_files<CR>", desc = "any files" },
    { " fb", "<cmd>Telescope buffers<CR>", desc = "buffers" },
    { " fc", group = "commands" },
    { " fcc", "<cmd>Telescope commands<CR>", desc = "commands" },
    { " fch", "<cmd>Telescope command_history<CR>", desc = "history" },
    { " fd", "<cmd>Telescope diagnostics<CR>", desc = "diagnostics" },
    { " ff", "<cmd>Telescope git_files<CR>", desc = "git files" },
    { " fg", group = "git" },
    { " fgb", "<cmd>Telescope git_branches<CR>", desc = "branches" },
    { " fgc", "<cmd>Telescope git_bcommits<CR>", desc = "bcommits" },
    { " fgg", "<cmd>Telescope git_commits<CR>", desc = "commits" },
    { " fgs", "<cmd>Telescope git_status<CR>", desc = "status" },
    { " fh", "<cmd>Telescope help_tags<CR>", desc = "help tags" },
    { " fi", "<cmd>Telescope live_grep_args default_text=function\\ <CR>", desc = "live grep funtion" },
    { " fj", "<cmd>Telescope jumplist<CR>", desc = "jumplist" },
    { " fk", "<cmd>Telescope keymaps<CR>", desc = "keymap" },
    { " fl", "<cmd>Telescope live_grep_args<CR>", desc = "live grep" },
    { " fn", '<cmd>Telescope neoclip "<CR>', desc = "neoclip" },
    { " fo", "<cmd>Telescope oldfiles<CR>", desc = "old files" },
    { " fq", "<cmd>Telescope quickfix<CR>", desc = "quickfix" },
    { " fr", "<cmd>Telescope resume<CR>", desc = "resume last" },
    { " fs", "<cmd>Telescope possession list<CR>", desc = "session list" },
    { " fw", "<cmd>Telescope aerial<CR>", desc = "(w)functions" },
    { " g", group = "git" },
    { " ga", "<cmd>GitGutterStageHunk<CR>", desc = "stage hunk" },
    { " gb", "<cmd>Telescope git_branches<CR>", desc = "branches" },
    { " gc", "<cmd>Telescope git_bcommits<CR>", desc = "bcommits" },
    { " gg", "<cmd>Neogit<CR>", desc = "Neogit" },
    { " gn", "<cmd>GitGutterNextHunk<CR>", desc = "next hunk" },
    { " gp", "<cmd>GitGutterPrevHunk<CR>", desc = "previous hunk" },
    { " gs", "<cmd>Telescope git_status<CR>", desc = "status" },
    { " gt", "<cmd>GitGutterToggle<CR>", desc = "toogle gutter" },
    { " gx", "<cmd>GitGutterPreviewHunk<CR>", desc = "preview hunk" },
    { " l", group = "lsp" },
    { " lc", "<cmd>lua vim.lsp.buf.code_action()<CR>", desc = "code action" },
    { " ld", "<cmd>lua vim.diagnostic.open_float()<CR>", desc = "diagnostic" },
    { " lf", "<cmd>lua vim.lsp.buf.formatting()<CR>", desc = "format" },
    { " ll", "<cmd>lua vim.diagnostic.setloclist()<CR>", desc = "set loc list" },
    { " lr", "<cmd>lua vim.lsp.buf.rename()<CR>", desc = "rename" },
    { " lt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", desc = "type definition" },
    { " lw", group = "workspace" },
    { " lwb", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", desc = "list workspace folders" },
    { " lwc", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", desc = "remove workspace folder" },
    { " lwg", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", desc = "add workspace folder" },
    { " m", group = "move split" },
    { " mh", "<C-w>H", desc = "⬅️" },
    { " mj", "<C-w>J", desc = "⬇️" },
    { " mk", "<C-w>K", desc = "⬆️" },
    { " ml", "<C-w>L", desc = "➡️" },
    { " o", group = "open" },
    { " od", group = "definition" },
    { " odh", "<cmd>split<CR>gd<cmd>wincmd p<CR>", desc = "horizontal" },
    { " odt", "<cmd>Telescope command_history<CR>", desc = "new tab" },
    { " odv", "<cmd>vsplit<CR>gd<cmd>wincmd p<CR>", desc = "vertical" },
    { " q", group = "quickfix" },
    { " qc", "<cmd>cclose<CR>", desc = "close" },
    { " qf", "<cmd>Telescope quickfix<CR>", desc = "find in quickfix" },
    { " qj", "<cmd>cnewer<CR>", desc = "next quickfix list" },
    { " qk", "<cmd>colder<CR>", desc = "prev quickfix list" },
    { " ql", "<cmd>chistory<CR>", desc = "quickfix list history" },
    { " qq", "<cmd>copen<CR>", desc = "open" },
    { " s", group = "session" },
    { " sl", ":PossessionLoad<CR>", desc = "load a session" },
    { " sn", ":PossessionSave ", desc = "create a new session" },
    { " sr", ":PossessionDelete<CR>", desc = "remove a session" },
    { " ss", ":PossessionSave!<CR>", desc = "save a session" },
    { " w", group = "write" },
    { " wa", "<cmd>wa!<CR>", desc = "save all" },
    { " we", "ZZ", desc = "close with saving" },
    { " wq", "ZQ", desc = "close without saving" },
    { " ww", "<cmd>w!<CR>", desc = "save file" },
  })
