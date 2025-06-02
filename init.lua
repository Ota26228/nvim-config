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
vim.opt.showtabline = 2
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
  vim.cmd("resize 6")                      -- 高さ10行に制限
end, { noremap = true, silent = true })



vim.api.nvim_create_user_command("Todo", function()
  local notes_dir = "~/notes/daily/"
  local date = os.date("%Y-%m-%d")
  local dow = os.date("(%a)") -- 曜日（例: Sat）
  local path = notes_dir .. date .. ".norg"

  -- フルパスに変換
  local full_path = vim.fn.expand(path)

  -- ファイルが存在しない場合は作成して見出しを書く
  if vim.fn.filereadable(full_path) == 0 then
    vim.fn.mkdir(vim.fn.expand(notes_dir), "p")
    local header = "* " .. date .. " " .. dow .. "\n\n** 今日のタスク\n\n- [ ] \n\n** メモ\n\n"
    vim.fn.writefile(vim.split(header, "\n"), full_path)
  end

  -- ファイルを開く
  vim.cmd("edit " .. full_path)
end, {})




-- ノーマルモードでIMEをオフにする（fcitx5）
vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    vim.fn.system("fcitx5-remote -c")
  end,
})


vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    vim.fn.system("fcitx5-remote -c")  -- IMEをOFFにする
  end,
})



vim.api.nvim_create_autocmd("FileType", {
    pattern="norg",
    callback=function() 
        -- ノーマルモードでTabキーにfold toggle(za)を割り当てる
        vim.keymap.set("n","<Tab>","za",{ buffer = true, silent=true })
    end,
})
