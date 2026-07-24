return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                style = "storm",    -- Choose "storm" for deep blue-dark, or "night" for pitch black
                transparent = true, -- Essential for your Kitty terminal blur
                terminal_colors = true,
                styles = {
                    sidebars = "transparent",
                    floats = "transparent",
                },
                on_colors = function(colors)
                    colors.comment = "#565f89" -- Crisp slate-blue for comments
                end,
            })

            -- Activate the color scheme
            vim.cmd("colorscheme tokyonight")

            -- Force pure transparency so your blur bleeds through perfectly
            vim.cmd([[
                highlight Normal guibg=none ctermbg=none
                highlight NormalNC guibg=none ctermbg=none
                highlight SignColumn guibg=none ctermbg=none
                highlight EndOfBuffer guibg=none ctermbg=none
                highlight NvimTreeNormal guibg=none ctermbg=none
                highlight NvimTreeNormalNC guibg=none ctermbg=none
                highlight NvimTreeEndOfBuffer guibg=none ctermbg=none
            ]])
        end,
    },
}
