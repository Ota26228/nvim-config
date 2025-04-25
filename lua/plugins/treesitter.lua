return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "markdown", "markdown_inline", "lua", "vim", "bash" },
        highlight = {
          enable = true,
        },
      })
    end,
  },
}

