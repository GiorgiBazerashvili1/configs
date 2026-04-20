vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")

-- setting up relative and line numbers
vim.opt.nu = true
vim.opt.rnu = true

-- indentation
vim.opt.autoindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

-- clipboard selection
vim.opt.clipboard = "unnamedplus"

vim.opt.guifont = "FiraCode Nerd Font:h14"

-- appearance and customization
vim.opt.termguicolors = true

-- keymaps
vim.keymap.set("n", "-", ":Rex<CR>", {silent = true})

