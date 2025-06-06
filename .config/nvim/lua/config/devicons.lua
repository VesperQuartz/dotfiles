require("nvim-web-devicons").setup({
	-- your personnal icons can go here (to override)
	-- you can specify color or cterm_color instead of specifying both of them
	-- DevIcon will be appended to `name`
	override = {
		zsh = {
			icon = "",
			color = "#428850",
			cterm_color = "65",
			name = "zsh",
		},
	},
	-- globally enable different highlight colors per icon (default to true)
	-- if set to false all icons will have the default icon's color
	color_icons = true,
	-- globally enable default icons (default to false)
	-- will get overriden by `get_icons` option
	default = true,
})

require("nvim-web-devicons").set_icon({
	["compose-prod.yaml"] = {
		icon = "󰡨",
		color = "#458ee6",
		cterm_color = "68",
		name = "Dockerfile",
	},
	["compose-production.yaml"] = {
		icon = "󰡨",
		color = "#458ee6",
		cterm_color = "68",
		name = "Dockerfile",
	},
	["compose-dev.yaml"] = {
		icon = "󰡨",
		color = "#458ee6",
		cterm_color = "68",
		name = "Dockerfile",
	},
	["compose-development.yaml"] = {
		icon = "󰡨",
		color = "#458ee6",
		cterm_color = "68",
		name = "Dockerfile",
	},
	["compose-prod.yml"] = {
		icon = "󰡨",
		color = "#458ee6",
		cterm_color = "68",
		name = "Dockerfile",
	},
	["compose-production.yml"] = {
		icon = "󰡨",
		color = "#458ee6",
		cterm_color = "68",
		name = "Dockerfile",
	},
	["compose-dev.yml"] = {
		icon = "󰡨",
		color = "#458ee6",
		cterm_color = "68",
		name = "Dockerfile",
	},
	["compose-development.yml"] = {
		icon = "󰡨",
		color = "#458ee6",
		cterm_color = "68",
		name = "Dockerfile",
	},
})
