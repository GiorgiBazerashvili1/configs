return {
  {
    "projekt0n/github-nvim-theme",
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = "dark"

      require("github-theme").setup({
        options = {
          -- Atom Dark often uses a slightly different palette
          -- 'dark_dimmed' is a great match for the Atom vibe
          theme_style = "dark_dimmed", 
          transparent = false,
        },
      })

      -- Set the colorscheme to the dimmed variant
      vim.cmd("colorscheme github_dark_dimmed")

      -- 🔥 YOUR NEAR-BLACK BACKGROUND (Kept as requested)
      -- Atom Dark usually has a slightly softer feel, so we keep these 
      -- overrides to ensure that true-black void look.
      vim.cmd([[
        highlight Normal guibg=#070707 guifg=#c9d1d9
        highlight NormalNC guibg=#070707 guifg=#c9d1d9
        highlight SignColumn guibg=#070707
        highlight EndOfBuffer guibg=#070707
      ]])

      -- 🌲 NVIM-TREE MATCH (Ensures the tree sidebar stays black)
      vim.cmd([[
        highlight NvimTreeNormal guibg=#070707
        highlight NvimTreeNormalNC guibg=#070707
        highlight NvimTreeEndOfBuffer guibg=#070707
        highlight NvimTreeWinSeparator guibg=#070707
      ]])
    end,
  },
}
