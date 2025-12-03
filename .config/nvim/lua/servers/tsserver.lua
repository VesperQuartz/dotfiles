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
-- 	single_file_support = false,
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
--
-- 	handlers = {},
-- 	settings = {
-- 		typescript = {
-- 			preferences = {
-- 				quoteStyle = "double",
-- 				importModuleSpecifierPreference = "non-relative",
-- 				importModuleSpecifierEnding = "minimal",
-- 			},
-- 		},
-- 	},
-- })
--
vim.lsp.config("vtsls", {
	single_file_support = false,
	handlers = {
		source_definition = function(err, locations) end,
		file_references = function(err, locations) end,
		code_action = function(err, actions) end,
	},
	refactor_move_to_file = {
		telescope_opts = function(items, default) end,
	},
	refactor_auto_rename = true,
	complete_function_calls = true,
	autoUseWorkspaceTsdk = true,
	settings = {
		refactor_auto_rename = true,
		complete_function_calls = true,
		autoUseWorkspaceTsdk = true,
		typescript = {
			preferences = {
				quoteStyle = "double",
				importModuleSpecifier = "non-relative", -- Changed: removed "Preference"
				importModuleSpecifierEnding = "minimal",
			},
		},
		javascript = { -- Add for .js/.jsx files
			preferences = {
				quoteStyle = "double",
				importModuleSpecifier = "non-relative", -- Changed: removed "Preference"
				importModuleSpecifierEnding = "minimal",
			},
		},
	},
})
