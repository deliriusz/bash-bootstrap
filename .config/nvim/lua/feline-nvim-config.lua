local navic = require("nvim-navic")
local feline = require("feline")

--table.insert(components.active[1], {
--   provider = function()
--      return navic.get_location()
--   end,
--   enabled = function()
--      return navic.is_available()
--   end
--})

--feline.setup({ components = components })
--feline.winbar.setup({ components = components })

feline.setup({})
feline.winbar.setup({})
