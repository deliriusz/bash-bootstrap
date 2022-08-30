local wk = require("whichkey_setup")

local keymap = {
   w = { ":w!<CR>", "save file" },
   s = { "<Cmd>Startify<CR>", "open start page" },
   f = {
      name = "+find",
      f = { "<Cmd>Telescope find_files<CR>", "files" },
      b = { "<Cmd>Telescope buffers<CR>", "buffers" },
      h = { "<Cmd>Telescope help_tags<CR>", "help tags" },
      o = { "<Cmd>Telescope oldfiles<CR>", "old files" },
      l = { "<Cmd>Telescope live_grep<CR>", "grep" },
      r = { "<Cmd>NvimTreeToggle<CR>", "browser" },
      k = { "<Cmd>Telescope keymaps<CR>", "keymap" },
      d = { "<Cmd>Telescope diagnostics<CR>", "diagnostics" },
      c = {
         name = "+commands",
         c = { "<Cmd>Telescope commands<CR>", "commands" },
         h = { "<Cmd>Telescope command_history<CR>", "history" },
      },
      q = { "<Cmd>Telescope quickfix<CR>", "quickfix" },
      g = {
         name = "+git",
         g = { "<Cmd>Telescope git_commits<CR>", "commits" },
         c = { "<Cmd>Telescope git_bcommits<CR>", "bcommits" },
         b = { "<Cmd>Telescope git_branches<CR>", "branches" },
         s = { "<Cmd>Telescope git_status<CR>", "status" },
      },
   },
   g = {
      name = "+git",
      g = { "<Cmd>Telescope git_commits<CR>", "commits" },
      c = { "<Cmd>Telescope git_bcommits<CR>", "bcommits" },
      b = { "<Cmd>Telescope git_branches<CR>", "branches" },
      s = { "<Cmd>Telescope git_status<CR>", "status" },
      p = { "<Cmd>GitGutterPrevHunk<CR>", "previous hunk" },
      n = { "<Cmd>GitGutterNextHunk<CR>", "next hunk" },
      x = { "<Cmd>GitGutterPreviewHunk<CR>", "preview hunk" },
      a = { "<Cmd>GitGutterStageHunk<CR>", "stage hunk" },
   },
   l = {
      name = "+lsp",
      l = { "<Cmd>lua vim.diagnostic.setloclist()<CR>", "set loc list" },
      f = { "<Cmd>lua vim.lsp.buf.formatting()<CR>", "format" },
      d = { "<Cmd>lua vim.diagnostic.open_float()<CR>", "diagnostic" },
      t = { "<Cmd>lua vim.lsp.buf.type_definition()<CR>", "type definition" },
      r = { "<Cmd>lua vim.lsp.buf.rename()<CR>", "rename" },
      c = { "<Cmd>lua vim.lsp.buf.code_action()<CR>", "code action" },
      w = {
         name = "+workspace",
         g = { "<Cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "add workspace folder" },
         c = { "<Cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", "remove workspace folder" },
         b = { "<Cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", "list workspace folders" },
      },
   },
}

wk.register_keymap(" ", keymap)
