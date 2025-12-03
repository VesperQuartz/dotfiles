vim.lsp.config("bashls", {
	settings = {
		bash = {
			path = "/bin/bash",
		},
	},
})
vim.lsp.enable("bashls")
vim.lsp.enable("awk_ls")
