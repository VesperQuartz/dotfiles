vim.lsp.enable("html")
vim.lsp.enable("tailwindcss")
vim.lsp.enable("astro")
vim.lsp.enable("svelte")
-- vim.lsp.enable("htmx")
vim.lsp.config("tailwindcss", {
	settings = {
		tailwindCSS = {
			experimental = {
				classRegex = {
					{ "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]", 'class: "(.*)"' },
					{ "cx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
				},
				includeLanguages = {
					rust = "html",
				},
			},
		},
	},
})
