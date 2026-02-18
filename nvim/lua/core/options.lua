vim.opt.syntax = "on"
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.encoding = "utf-8"
vim.opt.compatible = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.foldmethod = "syntax"
vim.opt.foldlevel = 99
vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.colorcolumn = { 80, 100 }
vim.opt.ruler = true

vim.opt.spelllang = "en_us"
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.showcmd = true

vim.opt.mouse = "a"
vim.g.lazyvim_check_order = false

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
