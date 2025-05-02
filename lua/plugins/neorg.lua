
return {
  "nvim-neorg/neorg",
  dependencies = { "nvim-lua/plenary.nvim" },
  ft = "norg",
  cmd = { "Neorg" },
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "~/notes",
            },
            default_workspace = "notes",
          },
        },
        ["core.keybinds"] = {
          config = {
            default_keybinds = true,
          },
        },
        -- 必要ならこれも追加
        -- ["core.integrations.telescope"] = {},
      },
    })
  end,
}
