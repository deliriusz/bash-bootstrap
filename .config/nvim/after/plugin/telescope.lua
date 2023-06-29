-- file browser mappings: https://github.com/nvim-telescope/telescope-file-browser.nvim#mappings
local telescope = require("telescope")
local actions = require("telescope.actions")
telescope.setup({
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
      ["<C-k>"] = actions.move_selection_previous,
      ["<C-j>"] = actions.move_selection_next,
      }
    },
    wrap_results = true,
    layout_strategy = 'vertical',
    layout_config = {
          bottom_pane = {
            height = 25,
            preview_cutoff = 120,
            prompt_position = "top"
          },
          center = {
            height = 0.4,
            preview_cutoff = 40,
            prompt_position = "top",
            width = 0.5
          },
          cursor = {
            height = 0.9,
            preview_cutoff = 40,
            width = 0.95
          },
          horizontal = {
            height = 0.9,
            preview_cutoff = 120,
            prompt_position = "bottom",
            width = 0.95
          },
          vertical = {
            height = 0.95,
            preview_cutoff = 10,
            prompt_position = "bottom",
            width = 0.95
          }
        }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- file_browser = {
    --   theme = "ivy",
    --   -- disables netrw and use telescope-file-browser in its place
    --   hijack_netrw = true,
    --   mappings = {
    --     ["i"] = {
    --       -- your custom insert mode mappings
    --     },
    --     ["n"] = {
    --       ["<C-j>"] = actions.move_selection_next,
    --       ["<C-k>"] = actions.move_selection_previous,
    --     },
    --   },
    -- },
  }
})

--require("telescope").load_extension "file_browser" -- plugin disabled, it breaks nvim-tree, then opening vim with a folder param
