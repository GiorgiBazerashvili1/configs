return {
  -- Auto Brackets
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({
        map_cr = false, -- Turns off the "double enter" block expansion
        map_bs = false, -- Turns off the "double delete" bracket removal
      })
    end
  },  

  -- Git Integration
  {
    "lewis6991/gitsigns.nvim",
    config = true
  },
  
  -- Easy Commenting (use 'gcc' to comment a line)
  {
    "numToStr/Comment.nvim",
    config = true
  },
  
  -- Status Line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = true
  }
}
