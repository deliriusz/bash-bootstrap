local rt = require("rustaceanvim")
local rtc = require("rustaceanvim.config")
local rtd = require("rustaceanvim.dap")
local mason_registry = require("mason-registry")

local codelldb = mason_registry.get_package("codelldb")
local extension_path = codelldb:get_install_path() .. "/extension/"
local codelldb_path = extension_path .. "adapter/codelldb"
local liblldb_path = extension_path .. "lldb/lib/liblldb.so"
local this_os = vim.uv.os_uname().sysname;

vim.g.rustaceanvim = function()
  -- The path is different on Windows
  if this_os:find "Windows" then
    codelldb_path = extension_path .. "adapter\\codelldb.exe"
    liblldb_path = extension_path .. "lldb\\bin\\liblldb.dll"
  else
    -- The liblldb extension is .so for Linux and .dylib for MacOS
    liblldb_path = liblldb_path .. (this_os == "Linux" and ".so" or ".dylib")
  end

  local cfg = require('rustaceanvim.config')
  return {
    dap = {
      adapter = rtc.get_codelldb_adapter(codelldb_path, liblldb_path),
    },
    server = {
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
      on_attach = function(_, bufnr)
        vim.keymap.set("n", "<Leader>k", rt.hover_actions.hover_actions, { buffer = bufnr })
        vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
      end,
    },
    tools = {
      hover_actions = {
        auto_focus = true,
      },
    },
  }
end
