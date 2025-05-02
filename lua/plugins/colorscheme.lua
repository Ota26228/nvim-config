
return {
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      -- 背景スタイル（darkの深さ）
      vim.g.everforest_background = "hard" -- 他に "soft", "medium"
      
      -- ItalicスタイルON
      vim.g.everforest_enable_italic = 1

      -- ここから透明化のポイント！
      vim.g.everforest_transparent_background = 1     -- メイン背景を透明に
      vim.g.everforest_disable_italic_comment = 0     -- コメントitalic有効（好みで0/1）
      vim.g.everforest_ui_contrast = "high"           -- UIのコントラスト（"low", "high"）

      -- テーマ適用
      vim.cmd("colorscheme everforest")

      -- 補助的に背景を明示して完全透過（必要に応じて）
      local hl = vim.api.nvim_set_hl
      hl(0, "Normal",      { bg = "none" })
      hl(0, "NormalNC",    { bg = "none" })
      hl(0, "SignColumn",  { bg = "none" })
      hl(0, "LineNr",      { bg = "none" })
      hl(0, "CursorLine",  { bg = "none" })
      hl(0, "EndOfBuffer", { bg = "none" })
    end,
  },
}

