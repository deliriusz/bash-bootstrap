local lspconfig = require("lspconfig")

local buf_map = function(bufnr, mode, lhs, rhs, opts)
    vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts or {
        silent = true,
    })
end

local on_attach = function(client, bufnr)
    -- vim.cmd("command! LspDef lua vim.lsp.buf.definition()")
    -- vim.cmd("command! LspFormatting lua vim.lsp.buf.formatting()")
    -- vim.cmd("command! LspCodeAction lua vim.lsp.buf.code_action()")
    -- vim.cmd("command! LspHover lua vim.lsp.buf.hover()")
    -- vim.cmd("command! LspRename lua vim.lsp.buf.rename()")
    -- vim.cmd("command! LspRefs lua vim.lsp.buf.references()")
    -- vim.cmd("command! LspTypeDef lua vim.lsp.buf.type_definition()")
    -- vim.cmd("command! LspImplementation lua vim.lsp.buf.implementation()")
    -- vim.cmd("command! LspDiagPrev lua vim.lsp.diagnostic.goto_prev()")
    -- vim.cmd("command! LspDiagNext lua vim.lsp.diagnostic.goto_next()")
    -- vim.cmd("command! LspDiagLine lua vim.lsp.diagnostic.show_line_diagnostics()")
    -- vim.cmd("command! LspSignatureHelp lua vim.lsp.buf.signature_help()")
    -- buf_map(bufnr, "n", "gd", ":LspDef<CR>")
    -- buf_map(bufnr, "n", "gr", ":LspRename<CR>")
    -- buf_map(bufnr, "n", "gy", ":LspTypeDef<CR>")
    -- buf_map(bufnr, "n", "K", ":LspHover<CR>")
    -- buf_map(bufnr, "n", "[a", ":LspDiagPrev<CR>")
    -- buf_map(bufnr, "n", "]a", ":LspDiagNext<CR>")
    -- buf_map(bufnr, "n", "ga", ":LspCodeAction<CR>")
    -- buf_map(bufnr, "n", "<Leader>a", ":LspDiagLine<CR>")
    -- buf_map(bufnr, "i", "<C-x><C-x>", "<cmd> LspSignatureHelp<CR>")
    -- if client.resolved_capabilities.document_formatting then
    --     vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    --- end
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  -- buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  -- buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  -- buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
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
        flags = {
           debounce_text_changes = 150,
        }
        ts_utils.setup_client(client)
        buf_map(bufnr, "n", "gs", ":TSLspOrganize<CR>")
        buf_map(bufnr, "n", "gi", ":TSLspRenameFile<CR>")
        buf_map(bufnr, "n", "go", ":TSLspImportAll<CR>")
        on_attach(client, bufnr)
    end,
})

--lspconfig["null-ls"].setup({ on_attach = on_attach })
-- end of TS setup --
