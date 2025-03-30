return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-emoji",
		"hrsh7th/cmp-calc",
		"xzbdmw/cmp-mini-snippets",
		"abeldekat/cmp-mini-snippets",
		{
			"echasnovski/mini.snippets",
			version = false,
			config = function()
				local gen_loader = require("mini.snippets").gen_loader
				require("mini.snippets").setup({
					snippets = {
						gen_loader.from_lang(),
					},
				})
			end,
		},
		"hrsh7th/cmp-omni",
		{ "roobert/tailwindcss-colorizer-cmp.nvim", config = true, lazy = false },
	},
	config = function(_, opts)
		require("cmp").setup({
			snippet = {
				-- Snippets from lsp, you should set this even you don't use this plugin.
				expand = function(args)
					local insert = MiniSnippets.config.expand.insert or MiniSnippets.default_insert
					insert({ body = args.body })
				end,
			},
			sources = require("cmp").config.sources({
				-- Snippets from mini.snippets, to make them appear at completion list.
				{ name = "mini.snippets" },
			}, {}),
		})
	end,
	opts = {
		performance = {
			debounce = 40, -- default is 60ms
			throttle = 10, -- default is 30ms
		},
	},
}
