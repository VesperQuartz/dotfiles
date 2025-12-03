return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	-- or if using mini.icons/mini.nvim
	dependencies = { "echasnovski/mini.icons" },
	opts = {
		oldfiles = {
			include_current_session = true,
		},
		keymap = {
			fzf = {
				["ctrl-q"] = "select-all+accept",
			},
		},
		ui = {
			select = true, -- This registers FzfLua as the vim.ui.select backend
		},
		files = {
			cmd = 'rg --files --hidden --glob "!.git/*" --glob "!node_modules*"',
		},
	},
}
