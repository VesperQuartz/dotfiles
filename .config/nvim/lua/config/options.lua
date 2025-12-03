vim.g.loaded_netrw = 1
vim.opt.updatetime = 300
vim.g.loaded_netrwPlugin = 1

-- environment for home
local set = vim.opt
set.filetype = "off" --disable filetype detection (but re-enable later, see below)
HOME = os.getenv("HOME")
set.compatible = false -- disable compatibility mode with vi

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
vim.opt.splitright = true
vim.lsp.offset_encoding = "utf-16"
vim.lsp.set_log_level = "off"

-- vim.lsp.set_log_level("debug")

--Set highlight on search
set.hlsearch = true
set.relativenumber = true
set.wrap = false

--Enable mouse mode

set.clipboard:prepend({ "unnamedplus" })
set.completeopt:prepend("menuone,noselect,noinsert")

-- Tab settings
set.expandtab = false
set.tabstop = 2 -- width that a <TAB> character displays as
set.shiftwidth = 2 -- number of spaces to use for each step of (auto)indent
set.softtabstop = 2 -- backspace after pressing <TAB> will remove up to this many spaces
set.autoindent = true -- copy indent from current line when starting a new line
set.smartindent = true -- even better autoindent (e.g. add indent after '{')

set.swapfile = false -- don't create a swapfile

set.background = "dark" -- configure Vim to use brighter colors
vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
-- Highlight on yank
vim.g.markdown_fenced_languages = {
	"ts=typescript",
}
vim.lsp.inlay_hint.enable(true)
vim.filetype.add({
	extension = {
		mdx = "mdx",
	},
})

vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.treesitter.language.register("markdown", "mdx")
local color = { "kanagawa", "catppuccin", "catppuccin-mocha", "tokyonight", "dracula", "rose-pine-moon" }
math.randomseed(os.time())
vim.cmd.colorscheme(color[math.random(#color)])
