vim.lsp.enable("biome")
vim.lsp.enable("eslint")
vim.lsp.enable("jsonls")
vim.lsp.enable("prismals")
vim.lsp.enable("prismals")
vim.lsp.enable("flutter-tools")
-- vim.lsp.enable("denols")
vim.lsp.enable("vtsls")

-- vim.lsp.config("denols", {
-- 	root_dir = root_pattern_excludes({
-- 		root = "deno.json?",
-- 		exclude = "package.json",
-- 	}),
-- })
--
vim.lsp.config("vtsls", {
	single_file_support = false,
})
