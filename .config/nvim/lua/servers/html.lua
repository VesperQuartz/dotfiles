vim.lsp.enable("html")
vim.lsp.enable("xmllint")
vim.lsp.enable("tailwindcss")
vim.lsp.enable("astro")
vim.lsp.enable("svelte")
-- vim.lsp.enable("htmx")
vim.lsp.enable("mdx_analyzer")

vim.lsp.config("mdx_analyzer", {
	cmd = { "mdx-language-server", "--stdio" },
	filetypes = { "md", "mdx" },
	root_markers = { "package.json", "mdx-components.tsx" },
	settings = {},
})

-- vim.lsp.config("tailwindcss", {
-- 	settings = {
-- 		tailwindCSS = {
-- 			experimental = {
-- 				classRegex = {
-- 					{ "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]", 'class: "(.*)"' },
-- 					{ "cx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
-- 				},
-- 				includeLanguages = {
-- 					rust = "html",
-- 				},
-- 			},
-- 		},
-- 	},
-- })
