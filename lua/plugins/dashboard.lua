return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("dashboard").setup({
        theme = "doom", -- 他に "hyper" もおすすめ
        config = {
          header = {
            "",
            "      _   _                 _           ",
            "     | \\ | | ___  _____   _(_) ___ ___  ",
            "     |  \\| |/ _ \\/ _ \\ \\ / / |/ __/ _ \\ ",
            "     | |\\  |  __/ (_) \\ V /| | (_|  __/ ",
            "     |_| \\_|\\___|\\___/ \\_/ |_|\\___\\___| ",
            "",
          },
          center = {
            { icon = "󰈞  ", desc = "Find File",       action = "Telescope find_files" },
            { icon = "󰊄  ", desc = "Recent Files",    action = "Telescope oldfiles" },
            { icon = "  ", desc = "Edit Config",     action = "edit ~/.config/nvim/init.lua" },
            { icon = "󰗼  ", desc = "Quit",            action = "qa" },
          },
          footer = { "🚀 Let's get productive with Neovim!" },
        },
      })
    end,
  },
}

