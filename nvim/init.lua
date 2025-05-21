require("config.lazy")

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

require("nvim-web-devicons").setup({
	-- globally enable different highlight colors per icon (default to true)
	-- if set to false all icons will have the default icon's color
	color_icons = true,
	-- globally enable default icons (default to false)
	-- will get overriden by `get_icons` option
	default = true,
	-- globally enable "strict" selection of icons - icon will be looked up in
	-- different tables, first by filename, and if not found by extension; this
	-- prevents cases when file doesn't have any extension but still gets some icon
	-- because its name happened to match some extension (default to false)
	strict = true,
	-- set the light or dark variant manually, instead of relying on `background`
	-- (default to nil)
	variant = "light|dark",
})
