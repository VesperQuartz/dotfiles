vim.lsp.enable("zls")
vim.lsp.enable("move_analyzer")
vim.lsp.enable("rust-analyzer")
vim.lsp.config("rust-analyzer", {
	settings = {
		["rust-analyzer"] = {
			checkOnSave = {
				command = "clippy",
			},
		},
	},
})
