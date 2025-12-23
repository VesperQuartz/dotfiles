return {
	{ "norcalli/nvim-colorizer.lua", lazy = false },
	{ "brenoprata10/nvim-highlight-colors", lazy = false },
	{
		"razak17/tailwind-fold.nvim",
		opts = {},
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		ft = { "html", "svelte", "astro", "vue", "typescriptreact", "php", "blade", "css" },
	},
	{
		"y3owk1n/tailwind-autosort.nvim",
		version = "*", -- remove this if you want to follow `main` branch
		event = "VeryLazy",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		---@type TailwindAutoSort.Config
		opts = {}, -- your configuration
	},
}
