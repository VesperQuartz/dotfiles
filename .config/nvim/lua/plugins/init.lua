return {
	{ "rafamadriz/friendly-snippets", lazy = false },
	{ "kosayoda/nvim-lightbulb", lazy = false },
	{
		"chrisgrieser/nvim-recorder",
		dependencies = "rcarriga/nvim-notify", -- optional
		opts = {
			stage = "bottom",
		}, -- required even with default settings, since it calls `setup()`
		lazy = false,
	},
	{ "https://codeberg.org/esensar/nvim-dev-container" },
	{
		"MeanderingProgrammer/render-markdown.nvim",
		ft = { "markdown", "codecompanion" },
	},
	{ "echasnovski/mini.nvim", version = "*" },
	"p00f/clangd_extensions.nvim",
	{
		"yanganto/move.vim",
		branch = "sui-move",
		lazy = false,
	},
	"folke/lsp-colors.nvim",
	"mfussenegger/nvim-dap",
	{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
	"leoluz/nvim-dap-go",
	{
		"fei6409/log-highlight.nvim",
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
	"gko/vim-coloresque",
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
	},
	{ "isobit/vim-caddyfile", lazy = false },
	"mfussenegger/nvim-jdtls",
	"mhartington/formatter.nvim",
	"nanotee/sqls.nvim",
	"nvim-lua/lsp-status.nvim",
	"nvim-lua/plenary.nvim",
	{ "hood/popui.nvim", lazy = false },
	{ "kdheepak/lazygit.nvim", lazy = false },
	"nvim-treesitter/playground",
	"udalov/kotlin-vim",
	{
		"akinsho/bufferline.nvim",
		lazy = false,
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
	},
	"simrat39/rust-tools.nvim",
	{ "akinsho/flutter-tools.nvim", dependencies = "nvim-lua/plenary.nvim" },
}
