
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
        -- ✅ TODOトグル機能を有効化
        ["core.qol.todo_items"] = {},

        -- ✅ キーマップ設定（<leader>td でトグル）
        ["core.keybinds"] = {
          config = {
            default_keybinds = false,
            hook = function(keybinds)
              keybinds.map("norg", "n", "<leader>ff", "<cmd>Neorg keybind norg core.qol.todo_items.todo.task_cycle<CR>")
            end,
          },
        },
      },
    })
  end,
}

