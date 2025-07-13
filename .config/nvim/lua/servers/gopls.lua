vim.lsp.enable("hls")
vim.lsp.enable("gopls")

vim.lsp.config("gopls", {
	settings = {
		gopls = {
			analyses = {
				shadow = true,
				unusedwrite = true,
				unusedvariable = true,
			},
			staticcheck = true,
			gofumpt = true,
		},
		["ui.inlayhint.hints"] = {
			assignVariableTypes = true,
			compositeLiteralFields = true,
			compositeLiteralTypes = true,
			constantValues = true,
			functionTypeParameters = true,
			parameterNames = true,
			rangeVariableTypes = true,
		},
	},
})
