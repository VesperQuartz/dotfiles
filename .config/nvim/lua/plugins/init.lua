return {
	{ "rafamadriz/friendly-snippets", lazy = false },
	{ "kosayoda/nvim-lightbulb", lazy = false, opts = { autocmd = { enabled = true } } },
	{
		"MeanderingProgrammer/render-markdown.nvim",
		ft = { "markdown", "codecompanion" },
	},
	"p00f/clangd_extensions.nvim",
	{
		"yanganto/move.vim",
		branch = "sui-move",
		lazy = false,
	},
	{ "folke/lsp-colors.nvim", lazy = false, opts = { Error = "#db4b4b", Warning = "#e0af68", Information = "#0db9d7", Hint = "#10B981" } },

	{
		"fei6409/log-highlight.nvim",
		lazy = false,
		opts = {},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	"rebelot/kanagawa.nvim",
	{
		"olrtg/nvim-emmet",
		config = function()
			vim.keymap.set({ "n", "v" }, "<leader>xe", require("nvim-emmet").wrap_with_abbreviation)
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		lazy = false,
		opts = {
			opts = {
				enable_close = true,
				enable_rename = true,
				enable_close_on_slash = true,
			},
		},
	},
	{ "isobit/vim-caddyfile", lazy = false },
	"nvim-lua/plenary.nvim",
	{ "kdheepak/lazygit.nvim", lazy = false },
	"udalov/kotlin-vim",
	{
		"akinsho/bufferline.nvim",
		lazy = false,
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
	},

}
