require("catppuccin").setup({
	flavour = "macchiato", -- latte, frappe, macchiato, mocha
	background = { -- :h background
		light = "macchiato",
		dark = "frappe",
	},
	transparent_background = false, -- disables setting the background color.
	show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
	term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
	dim_inactive = {
		enabled = false, -- dims the background color of inactive window
		shade = "dark",
		percentage = 0.15, -- percentage of the shade to apply to the inactive window
	},
	no_italic = false, -- Force no italic
	no_bold = false, -- Force no bold
	no_underline = false, -- Force no underline
	styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
		comments = { "italic" }, -- Change the style of comments
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = { "bold" },
		operators = {},
	},
	color_overrides = {},
	custom_highlights = {},
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		treesitter = false,
		notify = false,
		mini = true,
		barbar = true,
	},
})
local color = { "kanagawa", "catppuccin", "catppuccin-mocha", "tokyonight", "dracula", "rose-pine-moon" }
math.randomseed(os.time())
vim.cmd.colorscheme(color[math.random(#color)])
require("lualine").setup({
	options = {
		theme = "auto",
	},
})
