return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    -- These are the lines to uncomment!
    local status, configs = pcall(require, "nvim-treesitter.configs")
    if not status then return end

    configs.setup({
      ensure_installed = { "javascript", "html", "css", "lua", "vim", "vimdoc" },
      auto_install = true,
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    })
  end,
}
