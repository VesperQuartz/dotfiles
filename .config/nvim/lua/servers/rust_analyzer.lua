vim.lsp.enable("rust-analyzer")

vim.lsp.config("rust-analyzer", {
	settings = {
		["rust-analyzer"] = {
			checkOnSave = {
				command = "clippy",
			},
			inlayHints = {
				bindingModeHints = { enable = true },
				closureCaptureHints = { enable = true },
				closureReturnTypeHints = { enable = "always" },
				discriminantHints = { enable = "always" },
				expressionAdjustmentHints = { enable = "always" },
				lifetimeElisionHints = { enable = "always" },
				parameterHints = { enable = true },
				reborrowHints = { enable = "always" },
				typeHints = { enable = true },
			},
		},
	},
})
