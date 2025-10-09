return {
	"stevearc/conform.nvim",
	keys = {
		{
			"<leader>l",
			function()
				require("conform").format({ async = true, lsp_format = "never" })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
	},
	opts = {},
}
