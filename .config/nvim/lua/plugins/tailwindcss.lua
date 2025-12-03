return {
	{ "norcalli/nvim-colorizer.lua", lazy = false },
	{
		"themaxmarchuk/tailwindcss-colors.nvim",
		config = function()
			require("tailwindcss-colors").setup()
		end,
	},
}
