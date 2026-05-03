return {
    'echasnovski/mini.animate',
    version = false,
    config = function()
        local animate = require('mini.animate')
        animate.setup({
            -- 1. The Flashy Cursor Trail
            cursor = {
                enable = true,
                -- Duration in ms. Lower = faster. 150 is the "sweet spot" for speed.
                timing = animate.gen_timing.linear({ duration = 150, unit = 'total' }),
            },

            -- 2. The Smooth (but fast) Scroll
            scroll = {
                enable = true,
                -- We use a very short duration so it doesn't feel like you're waiting
                timing = animate.gen_timing.linear({ duration = 200, unit = 'total' }),
                -- This sub-pixel effect makes it look "flashy"
                subscroll = animate.gen_subscroll.equal({ predicate = function() return true end }),
            },

            -- 3. Window animations (Splits sliding into place)
            window = {
                enable = true,
                timing = animate.gen_timing.linear({ duration = 100, unit = 'total' }),
            },
        })
    end,
}
