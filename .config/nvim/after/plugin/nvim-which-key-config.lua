local wk = require("which-key")

local keymap = {
   w = { "<cmd>w!<CR>", "save file" },
   s = { "<cmd>Startify<CR>", "open start page" },
   f = {
      name = "+find",
      f = { "<cmd>Telescope find_files<CR>", "files" },
      b = { "<cmd>Telescope buffers<CR>", "buffers" },
      h = { "<cmd>Telescope help_tags<CR>", "help tags" },
      o = { "<cmd>Telescope oldfiles<CR>", "old files" },
      l = { "<cmd>Telescope live_grep<CR>", "grep" },
      r = { "<cmd>NvimTreeToggle<CR>", "browser" },
      k = { "<cmd>Telescope keymaps<CR>", "keymap" },
      d = { "<cmd>Telescope diagnostics<CR>", "diagnostics" },
      c = {
         name = "+commands",
         c = { "<cmd>Telescope commands<CR>", "commands" },
         h = { "<cmd>Telescope command_history<CR>", "history" },
      },
      q = { "<cmd>Telescope quickfix<CR>", "quickfix" },
      g = {
         name = "+git",
         g = { "<cmd>Telescope git_commits<CR>", "commits" },
         c = { "<cmd>Telescope git_bcommits<CR>", "bcommits" },
         b = { "<cmd>Telescope git_branches<CR>", "branches" },
         s = { "<cmd>Telescope git_status<CR>", "status" },
      },
   },
   g = {
      name = "+git",
      g = { "<cmd>Telescope git_commits<CR>", "commits" },
      c = { "<cmd>Telescope git_bcommits<CR>", "bcommits" },
      b = { "<cmd>Telescope git_branches<CR>", "branches" },
      s = { "<cmd>Telescope git_status<CR>", "status" },
      p = { "<cmd>GitGutterPrevHunk<CR>", "previous hunk" },
      n = { "<cmd>GitGutterNextHunk<CR>", "next hunk" },
      x = { "<cmd>GitGutterPreviewHunk<CR>", "preview hunk" },
      a = { "<cmd>GitGutterStageHunk<CR>", "stage hunk" },
   },
   l = {
      name = "+lsp",
      l = { "<cmd>lua vim.diagnostic.setloclist()<CR>", "set loc list" },
      f = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "format" },
      d = { "<cmd>lua vim.diagnostic.open_float()<CR>", "diagnostic" },
      t = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "type definition" },
      r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "rename" },
      c = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "code action" },
      w = {
         name = "+workspace",
         g = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "add workspace folder" },
         c = { "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", "remove workspace folder" },
         b = { "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", "list workspace folders" },
      },
   },
}

wk.register(keymap, {
   prefix = ' ',
   timeoutlen = 0
})