-- local snacks = require("folke/snacks.nvim")
return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		bigfile = { enabled = true, notify = true, size = 1.5 * 1024 * 1024 },
		rename = { enabled = true },
		dashboard = {
			sections = {
				{ section = "header" },
				{ icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
				{ icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
				{ icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
				{ section = "startup" },
			},
		},
		notifier = { enabled = true, top_down = false },
		notify = { enabled = true },
		lazygit = { enabled = true },
		quickfile = { enabled = true },
		indent = { enabled = true },
		input = { enabled = true },
		gh = {},
		words = { enabled = true },
	},
	keys = {},
}
