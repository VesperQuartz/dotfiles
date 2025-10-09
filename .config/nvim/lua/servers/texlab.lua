vim.lsp.enable("texlab")
vim.lsp.enable("tinymist")
vim.lsp.config("texlab", {
	settings = {
		texlab = {
			auxDirectory = ".",
			bibtexFormatter = "texlab",
			build = {
				args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
				executable = "tectonic",
				forwardSearchAfter = false,
				onSave = true,
			},
			chktex = {
				onEdit = false,
				onOpenAndSave = true,
			},
			diagnosticsDelay = 300,
			formatterLineLength = 80,
			forwardSearch = {
				args = {},
				executable = "zathura",
				onSave = false,
			},
			latexFormatter = "latexindent",
			latexindent = {
				modifyLineBreaks = false,
			},
			linter = "chktex",
		},
	},
})

vim.lsp.enable("marksman")

vim.lsp.config("tinymist", {
	cmd = { "tinymist" },
	filetypes = { "typst" },
	settings = {
		formatterMode = "typstyle",
		exportPdf = "onSave",
		semanticTokens = "disable",
		lint = { enabled = true },
		preview = { refresh = "onSave" },
	},
})
