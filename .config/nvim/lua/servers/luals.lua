vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim", "MiniIcons", "Snacks" },
			},
		},
	},
})
vim.lsp.enable("lua_ls")
