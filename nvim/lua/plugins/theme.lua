return {
  {
    "projekt0n/github-nvim-theme",
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = "dark"

      require("github-theme").setup({
        options = {
          transparent = false,
        },
      })

      vim.cmd("colorscheme github_dark")

      -- 🔥 NEAR-BLACK BACKGROUND (ultra close to black)
      vim.cmd([[
        highlight Normal guibg=#070707 guifg=#c9d1d9
        highlight NormalNC guibg=#070707 guifg=#c9d1d9
        highlight SignColumn guibg=#070707
        highlight EndOfBuffer guibg=#070707
      ]])

      -- 🌲 NVIM-TREE MATCH
      vim.cmd([[
        highlight NvimTreeNormal guibg=#070707
        highlight NvimTreeNormalNC guibg=#070707
        highlight NvimTreeEndOfBuffer guibg=#070707
        highlight NvimTreeWinSeparator guibg=#070707
      ]])
    end,
  },
}
