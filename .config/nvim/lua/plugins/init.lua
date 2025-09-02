return {
	{ "rafamadriz/friendly-snippets", lazy = false },
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
	"folke/which-key.nvim",
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
