vim.lsp.config("jdtls", {
	cmd = { "jdtls" },
	settings = {
		java = {
			eclipse = { downloadSources = true },
			configuration = { updateBuildConfiguration = "interactive" },
		},
	},
})
vim.lsp.enable("jdtls")
