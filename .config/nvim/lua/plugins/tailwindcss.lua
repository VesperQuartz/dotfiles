return {
	{ "norcalli/nvim-colorizer.lua" },
	{
		"themaxmarchuk/tailwindcss-colors.nvim",
		config = function()
			-- pass config options here (or nothing to use defaults)
			require("tailwindcss-colors").setup()
		end,
	},
}
