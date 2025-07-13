require("servers..keybind")
require("servers..bashls")
require("servers..cssls")
--require("servers..ccls")
require("servers..gopls")
require("servers..html")
require("servers..luals")
require("servers..yamls")
require("servers..phpactor")
require("lspconfig").dartls.setup({})
require("servers..pylsp")
require("servers..rust_analyzer")
require("servers..sqls")
require("servers..texlab")
require("servers..tsserver")
require("lspconfig").puppet.setup({})
require("config..barbar")
-- require("config..avante")
require("config..mcp")
require("config..companion")
-- require("config..copilot")
require("servers..javals")
require("servers..kotlinls")
require("servers..solidity")
require("config..theme")
require("config..rest")
require("config..mini")
require("config..colors")
-- require("config..autopair")
require("config..devicons")
require("config..autotag")
require("config..alpha")
require("config..evil_lualine")
require("config..lspkind")
require("config..dap")
require("config..noice")
-- require("config..ai")
require("dapui").setup()
require("config..telescope")
-- require("config..cmp")
require("config..treesitter")
require("config..gitsign")
-- require("config..luasnip")
-- require("config..snippy")
require("config..format")
require("colorizer").setup({
	"*", -- Highlight all files, but customize some others.
	css = { rgb_fn = true }, -- Enable parsing rgb(...) functions in css.
	html = { names = false },
})
require("which-key").setup({})
require("lspconfig").pyre.setup({})
require("lsp_signature").setup({
	floating_window = false,
	hint_enable = true, -- virtual hint enable
	hint_prefix = "🐼 ", -- Panda for parameter
	hint_scheme = "String",
})

vim.cmd([[ autocmd BufRead,BufNewFile *.org set filetype=org ]])
vim.cmd([[ autocmd BufRead,BufNewFile *.org set filetype=org ]])
vim.cmd([[
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent! loadview
]])
vim.lsp.inlay_hint.enable(true)
