local capabilities = require("cmp_nvim_lsp").default_capabilities()
require("lspconfig").eslint.setup({})
require("lspconfig").jsonls.setup({
	capabilities = capabilities,
})
require("lspconfig").prismals.setup({})
require("flutter-tools").setup({}) -- use defaults
-- require("typescript-tools").setup({
--   settings = {
--     tsserver_file_preferences = {
--       includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all'
--       includeInlayVariableTypeHints = true,
--       includeInlayFunctionParameterTypeHints = false,
--       includeInlayVariableTypeHintsWhenTypeMatchesName = true,
--       includeInlayPropertyDeclarationTypeHints = false,
--       includeInlayFunctionLikeReturnTypeHints = true,
--     },
--   },
-- })
require("lspconfig").solidity_ls.setup({})
require("lspconfig").solidity.setup({})
require("lspconfig").solc.setup({})
require("lspconfig").denols.setup({})
require("lspconfig").vtsls.setup({
	single_file_support = false,
	root_dir = function()
		return not vim.fs.root(0, { "deno.json", "deno.jsonc" })
			and vim.fs.root(0, { "tsconfig.json", "package.json", "jsconfig.json", "bun.lockb", ".git" })
	end,
})
