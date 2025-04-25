-- init.lua

-- 基本設定
vim.g.mapleader = " "  -- スペースキーを <leader> に設定
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.clipboard = "unnamedplus"
vim.cmd("syntax on")
vim.cmd("set background=dark")
vim.o.showmode = false

-- 英語表示
pcall(function()
  vim.o.langmenu = "en_US.UTF-8"
  vim.cmd("language messages en_US.UTF-8")
end)
-- Lazy.nvim セットアップ
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")  -- plugins フォルダを読み込む
-- <leader>t で下に小さめのターミナルを開く
vim.keymap.set("n", "<leader>t", function()
  vim.cmd("belowright split term://$SHELL") -- シェルで分割ターミナル起動
  vim.cmd("resize 10")                      -- 高さ10行に制限
end, { noremap = true, silent = true })
