vim.lsp.enable("pbls")
vim.lsp.enable("eslint")
vim.lsp.enable("jsonls")
vim.lsp.enable("prismals")
vim.lsp.enable("prismals")
vim.lsp.enable("vtsls")

vim.lsp.config("jsonls", {
	settings = {
		json = {
			schemas = require("schemastore").json.schemas({
				select = {
					".eslintrc",
					"package.json",
				},
			}),
			validate = { enable = true },
		},
	},
})

-- vim.lsp.enable("tsgo")
vim.lsp.enable("biome")
-- vim.lsp.enable("denols")

-- vim.lsp.config("denols", {
-- 	root_dir = root_pattern_excludes({
-- 		root = "deno.json?",
-- 		exclude = "package.json",
-- 	}),
-- })
--
--
-- vim.lsp.config("tsgo", {
-- 	cmd = { "tsgo", "--lsp", "--stdio" },
-- 	filetypes = {
-- 		"javascript",
-- 		"javascriptreact",
-- 		"javascript.jsx",
-- 		"typescript",
-- 		"typescriptreact",
-- 		"typescript.tsx",
-- 	},
-- 	root_markers = {
-- 		"tsconfig.json",
-- 		"jsconfig.json",
-- 		"package.json",
-- 		".git",
-- 		"tsconfig.base.json",
-- 	},
-- })
--
vim.lsp.config("vtsls", {
	single_file_support = false,
	settings = {
		refactor_auto_rename = true,
		complete_function_calls = true,
		typescript = {
			preferences = { quoteStyle = "double" },
			-- suggestionActions = { enabled = false },
			inlayHints = {
				enumMemberValues = { enabled = true },
				functionLikeReturnTypes = { enabled = false },
				parameterNames = { enabled = "literals" },
				parameterTypes = { enabled = false },
				propertyDeclarationTypes = { enabled = true },
				variableTypes = { enabled = false },
			},
		},
	},
})
