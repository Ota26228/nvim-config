return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "clangd",
          "ts_ls", -- ✅ ← ここが重要
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.clangd.setup({})
      lspconfig.ts_ls.setup({}) -- ✅ ← ここも重要
    end,
  },
}

