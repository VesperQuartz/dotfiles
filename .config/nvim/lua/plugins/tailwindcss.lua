return {
	{ "norcalli/nvim-colorizer.lua", lazy = false },
	{
		lazy = false,
		"luckasRanarison/tailwind-tools.nvim",
		name = "tailwind-tools",
		build = ":UpdateRemotePlugins",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"neovim/nvim-lspconfig",
		},
		opts = {
			conceal = {
				enabled = true,
			},
			server = {
				override = true,
				filetypes = {
					"html",
					"css",
					"scss",
					"javascript",
					"javascriptreact",
					"typescript",
					"typescriptreact",
					"vue",
					"svelte",
					"markdown",
					"vue",
					"json",
					"yaml",
				},
			},
		},
	},
}
