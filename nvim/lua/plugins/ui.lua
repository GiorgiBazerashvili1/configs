return {
  -- Auto Brackets
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true
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
