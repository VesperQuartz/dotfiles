require("nvim-tree").setup({
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
})
require("mini.files").setup({
	mappings = {
		go_in = "<cr>",
		go_out = "[",
	},
})
require("mini.icons").setup()
