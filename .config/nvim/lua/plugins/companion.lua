return {
	"olimorris/codecompanion.nvim",
	cmd = "CodeCompanion",
	keys = {
		{ "<C-a>", ":CodeCompanionActions<cr>", desc = "CodeCompanion Actions", mode = { "n", "v" } },
		{ "<LocalLeader>a", ":CodeCompanionChat Toggle<cr>", desc = "CodeCompanion Chat", mode = { "n", "v" } },
		{ "ga", ":CodeCompanionChat Add<cr>", desc = "CodeCompanion Add", mode = "v" },
		{ "<leader>aa", ":CodeCompanionChat Toggle<cr>", desc = "CodeCompanion Chat", mode = { "n", "v" } },
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		display = {
			chat = {
				auto_scroll = true,
				show_settings = true,
			},
		},
		strategies = {
			chat = {
				adapter = "openai",
				tools = {
					opts = {
						auto_submit_errors = true,
						auto_submit_success = true,
					},
				},
			},
			inline = {
				adapter = "openai",
			},
		},
		adapters = {
			http = {
				openai = function()
					return require("codecompanion.adapters").extend("openai", {
						env = {
							api_key = "cmd:echo $COMPANION_KEY",
						},
					})
				end,
			},
		},
		extensions = {},
	},
}
