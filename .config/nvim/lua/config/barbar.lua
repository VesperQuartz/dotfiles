require("tabline").setup({
	show_index = true, -- show tab index
	show_modify = true, -- show buffer modification indicator
	show_icon = true, -- show file extension icon
	modify_indicator = "[+]", -- modify indicator
	no_name = "No name", -- no name buffer name
	brackets = { "[", "]" }, -- file name brackets surrounding
})
require("barbecue").setup({
	create_autocmd = false, -- prevent barbecue from updating itself automatically
	attach_navic = false, -- prevent barbecue from automatically attaching nvim-navic
})
