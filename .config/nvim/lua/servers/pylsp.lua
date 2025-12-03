-- vim.lsp.enable("jedi_language_server")
vim.lsp.config("ty", {
	settings = {
		python = {
			analysis = {
				typeCheckingMode = "basic",
				autoSearchPaths = true,
				useLibraryCodeForTypes = true,
			},
		},
	},
})
vim.lsp.enable("ty")
