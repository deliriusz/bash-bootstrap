local lspconfig = require("lspconfig")
local util = require("lspconfig/util")

local buf_map = function(bufnr, mode, lhs, rhs, opts)
   vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts or {
      silent = true,
   })
end

local on_attach = function(client, bufnr)
   local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

   local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

   -- Enable completion triggered by <c-x><c-o>
   buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

   -- Mappings.
   local opts = { noremap = true, silent = true }
   buf_map(bufnr, "n", "<Leader>a", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>")
   if client.resolved_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
   end
   buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
   buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
   buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
   buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
   buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
   buf_set_keymap('i', '<C-x><C-x>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
   buf_set_keymap('n', '<Leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
   buf_set_keymap('n', '<Leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
   buf_set_keymap('n', '<Leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
   buf_set_keymap('n', '<Leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
   buf_set_keymap('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
   buf_set_keymap('n', '<Leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
   buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
   buf_set_keymap('n', '<Leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
   buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
   buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
   buf_set_keymap('n', '<Leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
   buf_set_keymap('n', '<Leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

-- list of LSP servers
-- https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers

-- NULL LS setup --
lspconfig["null-ls"].setup({ on_attach = on_attach })
-- end of NULL LS setup --

-- TS setup --
lspconfig.tsserver.setup({
   on_attach = function(client, bufnr)
      client.resolved_capabilities.document_formatting = false
      client.resolved_capabilities.document_range_formatting = false
      local ts_utils = require("nvim-lsp-ts-utils")
      ts_utils.setup({
         eslint_bin = "eslint_d",
         eslint_enable_diagnostics = true,
         eslint_enable_code_actions = true,
         enable_formatting = true,
         formatter = "prettier",
      })
      ts_utils.setup_client(client)
      buf_map(bufnr, "n", "gs", ":TSLspOrganize<CR>")
      buf_map(bufnr, "n", "gi", ":TSLspRenameFile<CR>")
      buf_map(bufnr, "n", "go", ":TSLspImportAll<CR>")
      on_attach(client, bufnr)
   end,
   flags = {
      debounce_text_changes = 150,
   }
})
-- end of TS setup --

-- bash LS setup
lspconfig.bashls.setup {
   on_attach = on_attach,
}
-- end of bash LS setup

-- c/c++ LS setup
lspconfig.clangd.setup {
   on_attach = on_attach,
}
-- end of c/c++ LS setup

-- lua LS setup
lspconfig.sumneko_lua.setup {
   on_attach = on_attach,
}
-- end of lua LS setup

-- golang LS setup
lspconfig.gopls.setup {
   cmd = { "gopls", "serve" },
   filetypes = { "go", "gomod" },
   on_attach = on_attach,
   root_dir = util.root_pattern("go.work", "go.mod", ".git"),
   settings = {
      gopls = {
         analyses = {
            unusedparams = true,
         },
         staticcheck = true,
      },
   },
}
-- end of golang LS setup

-- python LS setup
lspconfig.pylsp.setup {
   on_attach = on_attach,
}
-- end of python LS setup


-- Solidity LS setup
lspconfig.solc.setup {
   on_attach = on_attach,
   root_dir = lspconfig.util.root_pattern('hardhat.config.*', '.git'),
}
-- end of Solidity LS setup
