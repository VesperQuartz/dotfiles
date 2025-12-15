return {
	{ "norcalli/nvim-colorizer.lua", lazy = false },
	{
		lazy = false,
		"luckasRanarison/tailwind-tools.nvim",
		name = "tailwind-tools",
		build = ":UpdateRemotePlugins",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		opts = {
			conceal = {
				enabled = true,
			},
		}, -- your configuration
	},
}
