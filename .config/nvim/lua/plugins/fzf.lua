return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	-- or if using mini.icons/mini.nvim
	dependencies = { "echasnovski/mini.icons" },
	opts = {
		files = {
			cmd = 'rg --files --hidden --glob "!.git/*"',
		},
	},
}
