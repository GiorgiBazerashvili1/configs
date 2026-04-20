return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "vtsls", "html", "cssls" },
      })

      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      -- The New Neovim 0.11 Way
      local servers = { "vtsls", "html", "cssls" }
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
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<C-Space>'] = cmp.mapping.complete(),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
        })
      })
    end,
  },
}
