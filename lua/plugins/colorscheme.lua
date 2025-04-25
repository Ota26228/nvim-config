return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Enable true color support
      vim.opt.termguicolors = true
      -- Enable transparent background for Solarized Osaka
      vim.g.solarized_osaka_transparent = true
      -- Apply the colorscheme
      vim.cmd("colorscheme solarized-osaka")
      -- Make core highlight groups transparent
      local hl = vim.api.nvim_set_hl
      hl(0, 'Normal',      { bg = 'none' })
      hl(0, 'NormalNC',    { bg = 'none' })
      hl(0, 'SignColumn',  { bg = 'none' })
      hl(0, 'VertSplit',   { bg = 'none' })
      hl(0, 'EndOfBuffer', { bg = 'none' })
      hl(0, 'NormalFloat', { bg = 'none' })
      hl(0, 'FloatBorder', { bg = 'none' })
    end
  }
}

