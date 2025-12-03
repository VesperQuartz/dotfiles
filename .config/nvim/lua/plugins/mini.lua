return {
	{
		"echasnovski/mini.diff",
		config = function()
			local diff = require("mini.diff")
			diff.setup({
				source = diff.gen_source.none(),
			})
		end,
	},
	{
		"echasnovski/mini.nvim",
		version = "*",
		lazy = false,
		config = function()
			require("mini.files").setup({
				mappings = {
					go_in = "<cr>",
					go_out = "[",
				},
			})
			require("mini.icons").setup()
			require("mini.snippets").setup({
				snippets = {
					require("mini.snippets").gen_loader.from_lang(),
				},
			})
		end,
	},
}
