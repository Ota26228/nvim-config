return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers", -- "tabs" にも変更可能
        diagnostics = "nvim_lsp",
        show_buffer_close_icons = false,
        show_close_icon = false,
        separator_style = "slant", -- "thin", "thick", "slant" など
      },
    })
  end,
}

