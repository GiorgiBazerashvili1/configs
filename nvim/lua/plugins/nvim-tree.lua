return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- 1. SET COLORS FIRST (Outside the setup call)
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "#000000" })

    -- 2. SETUP THE PLUGIN
    require("nvim-tree").setup({
      -- Visual Improvements
      renderer = {
        group_empty = true,
        highlight_opened_files = "all",
        root_folder_label = false,
        indent_markers = {
          enable = true,
        },
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
      -- Behavioral Changes
      view = {
        width = 35,
        relativenumber = true,
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      -- Filters
      filters = {
        dotfiles = false,
        custom = { ".DS_Store" },
      },
    })

    -- 3. KEYBINDINGS
    local keymap = vim.keymap
    keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFocus<CR>", { desc = "Focus File Explorer" })
  end,
}
