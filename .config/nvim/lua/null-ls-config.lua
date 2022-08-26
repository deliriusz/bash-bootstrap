null_ls=require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.shfmt, -- shell script formatting
    null_ls.builtins.formatting.stylelint, -- css, scss, etc.
    null_ls.builtins.formatting.stylish_haskell, -- haskell
    null_ls.builtins.formatting.stylua, -- lua
    null_ls.builtins.formatting.xmllint, -- xml
    null_ls.builtins.formatting.yamlfmt, -- yaml
    null_ls.builtins.formatting.yapf, -- python
    null_ls.builtins.diagnostics.pylint, -- python
    null_ls.builtins.diagnostics.revive, -- go
    null_ls.builtins.diagnostics.selene, -- lua
    null_ls.builtins.diagnostics.solhint, -- solidity
  },
})
