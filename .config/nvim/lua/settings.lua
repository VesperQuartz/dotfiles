require("servers..keybind")
require("servers..bashls")
require("servers..cssls")
require("servers..gopls")
require("servers..html")
require("servers..luals")
require("servers..yamls")
require("servers..phpactor")
require("servers..pylsp")
require("servers..rust_analyzer")
require("servers..sqls")
require("servers..texlab")
require("servers..tsserver")
require("config..mcp")
require("config..companion")
require("servers..javals")
require("servers..kotlinls")
require("servers..solidity")
require("config..theme")
require("config..rest")
require("config..dart")
require("config..mini")
require("config..colors")
require("config..autotag")
require("config..evil_lualine")
require("config..dap")
require("config..noice")
require("config..dropbar")
require("dapui").setup()
require("config..gitsign")
require("config..format")
require("colorizer").setup({
	"*", -- Highlight all files, but customize some others.
	css = { rgb_fn = true }, -- Enable parsing rgb(...) functions in css.
	html = { names = false },
})
require("which-key").setup({})
vim.cmd([[ autocmd BufRead,BufNewFile *.org set filetype=org ]])
vim.cmd([[ autocmd BufRead,BufNewFile *.caddy set filetype=caddy ]])
vim.cmd([[ autocmd BufRead,BufNewFile *.org set filetype=org ]])
vim.cmd([[
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent! loadview
]])

vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("EnableTreesitterHighlighting", { clear = true }),
	desc = "Try to enable tree-sitter syntax highlighting",
	pattern = "*", -- run on *all* filetypes
	callback = function()
		pcall(function()
			vim.treesitter.start()
		end)
	end,
})

vim.lsp.inlay_hint.enable(true)
vim.filetype.add({
	extension = {
		mdx = "mdx",
	},
})

vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.treesitter.language.register("markdown", "mdx")
