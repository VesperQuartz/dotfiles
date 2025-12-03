local sev = vim.diagnostic.severity
vim.g.loaded_netrw = 1
vim.opt.updatetime = 300
vim.g.loaded_netrwPlugin = 1

-- environment for home
local set = vim.opt
HOME = os.getenv("HOME")
set.compatible = false -- disable compatibility mode with vi

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
vim.opt.splitright = true
vim.opt.confirm = true
vim.opt.undofile = true
vim.opt.lazyredraw = true

--Set highlight on search
set.hlsearch = true
set.relativenumber = true
set.wrap = false

set.clipboard:prepend({ "unnamedplus" })
set.completeopt:prepend("menuone,noselect,noinsert,nearest")
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
vim.api.nvim_create_autocmd("FileType", {
	pattern = "*",
	callback = function()
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})
-- Highlight on yank
vim.g.markdown_fenced_languages = {
	"ts=typescript",
}
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
vim.lsp.config("*", { capabilities = capabilities })

vim.lsp.inlay_hint.enable(true)
vim.filetype.add({
	extension = {
		mdx = "mdx",
	},
})

vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldmethod = "expr"
vim.opt.foldlevel = 99
vim.o.pumborder = "rounded"
vim.o.pummaxwidth = 40
vim.treesitter.language.register("markdown", "mdx")
local color = { "kanagawa", "habamax", "catppuccin", "catppuccin-mocha", "tokyonight", "dracula", "rose-pine-moon" }
vim.cmd.colorscheme(color[math.random(#color)])
vim.o.cmdheight = 4
vim.opt.shortmess:append("atI")
vim.diagnostic.config({
	severity_sort = true,
	update_in_insert = false,
	float = {
		border = "rounded",
		source = true,
	},
	signs = {
		text = {
			[sev.ERROR] = "E",
			[sev.WARN] = "W",
			[sev.INFO] = "I",
			[sev.HINT] = "H",
		},
	},
})
