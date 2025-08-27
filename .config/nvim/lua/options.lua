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

-- vim.lsp.set_log_level("debug")

--Set highlight on search
set.hlsearch = true
set.relativenumber = true

--Enable mouse mode

set.clipboard:prepend({ "unnamedplus" })
set.completeopt:prepend("menuone,noselect,noinsert")

-- Tab settings
set.expandtab = true
set.tabstop = 2 -- width that a <TAB> character displays as
set.shiftwidth = 2 -- number of spaces to use for each step of (auto)indent
set.softtabstop = 2 -- backspace after pressing <TAB> will remove up to this many spaces
set.swapfile = false -- don't create a swapfile

set.autoindent = true -- copy indent from current line when starting a new line
set.smartindent = true -- even better autoindent (e.g. add indent after '{')

set.background = "dark" -- configure Vim to use brighter colors
vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
-- Highlight on yank
vim.cmd([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]])

vim.g.markdown_fenced_languages = {
	"ts=typescript",
}
