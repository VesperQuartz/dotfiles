require("gitsigns").setup({
	current_line_blame = true,
})

require("nvim-lightbulb").setup({
	autocmd = { enabled = true },
})

require("log-highlight").setup({})

require("recorder").displaySlots()

require("recorder").recordingStatus()
