return {
  {
    "neovim/nvim-lspconfig",
    lazy = false, -- Ensure this is NOT lazy-loaded
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer", -- Needed for generic word suggestions
      "hrsh7th/cmp-path",   -- Needed for file path suggestions
      "L3MON4D3/LuaSnip",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        -- 1. Added lua_ls and pyright here
        ensure_installed = { "vtsls", "html", "cssls", "lua_ls", "pyright" },
      })

      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      -- 2. Added lua_ls and pyright to the server list
      local servers = { "vtsls", "html", "cssls", "lua_ls", "pyright" }
      for _, server_name in ipairs(servers) do
        local config = vim.lsp.config[server_name]
        if config then
          config.capabilities = capabilities
          vim.lsp.enable(server_name)
        end
      end

      -- Completion Setup
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args) require("luasnip").lsp_expand(args.body) end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<Tab>'] = cmp.mapping.select_next_item(),
          ['<S-Tab>'] = cmp.mapping.select_prev_item(),
          ['<CR>'] = cmp.mapping.confirm({ select = false }), 
          ['<C-Space>'] = cmp.mapping.complete(),
        }),
        -- 3. Added 'buffer' and 'path' to sources so it suggests more than just LSP
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'buffer' },
          { name = 'path' },
        })
      })
    end,
  },
}
