return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
        -- 🔥 FIX: Call the main setup directly to avoid deprecated module crashes
        require("nvim-treesitter").setup({
            ensure_installed = { "javascript", "c", "html", "css", "lua", "vim", "vimdoc", "python" },
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false, -- Disables old VIM regex for pure treesitter speed
            },
            indent = {
                enable = true,
            },
        })
    end,
}
