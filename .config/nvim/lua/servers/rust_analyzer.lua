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

local opts = {
	tools = {
		-- rust-tools options
		autoSetHints = true,
		-- inlay_hints = {
		-- 	show_parameter_hints = false,
		-- 	parameter_hints_prefix = "",
		-- 	other_hints_prefix = "",
		-- },
	},
	-- all the opts to send to nvim-lspconfig
	-- these override the defaults set by rust-tools.nvim
	-- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
	server = {
		settings = {
			-- to enable rust-analyzer settings visit:
			-- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
			["rust-analyzer"] = {
				-- enable clippy on save
				checkOnSave = {
					command = "clippy",
				},
			},
		},
	},
}

require("rust-tools").setup(opts)
