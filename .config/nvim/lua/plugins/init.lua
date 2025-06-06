return {
	{ "nvim-telescope/telescope-media-files.nvim", lazy = false },
	{
		"folke/ts-comments.nvim",
		opts = {},
		event = "VeryLazy",
		enabled = vim.fn.has("nvim-0.10.0") == 1,
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
	{ "echasnovski/mini.nvim", version = "*" },
	"p00f/clangd_extensions.nvim",
	{ "zbirenbaum/copilot.lua", lazy = false },
	{ "giuxtaposition/blink-cmp-copilot", lazy = false },
	"petertriho/cmp-git",
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
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",
	{ "lukas-reineke/indent-blankline.nvim" },
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({})
		end,
	},
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
	"isobit/vim-caddyfile",
	"mfussenegger/nvim-jdtls",
	"mhartington/formatter.nvim",
	"nanotee/sqls.nvim",
	"nvim-lua/lsp-status.nvim",
	"nvim-lua/plenary.nvim",
	{ "hood/popui.nvim", lazy = false },
	{ "kdheepak/lazygit.nvim", lazy = false },
	"nvim-treesitter/playground",
	"onsails/lspkind-nvim",
	"udalov/kotlin-vim",
	{
		"akinsho/bufferline.nvim",
		lazy = false,
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
	},
	"simrat39/rust-tools.nvim",
	{ "akinsho/flutter-tools.nvim", dependencies = "nvim-lua/plenary.nvim" },
	{
		"ray-x/lsp_signature.nvim",
		event = "InsertEnter",
		opts = { bind = true, handler_opts = {
			border = "rounded",
		} },
		config = function(_, opts)
			require("lsp_signature").setup(opts)
		end,
	},
}
