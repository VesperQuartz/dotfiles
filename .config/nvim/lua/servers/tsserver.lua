vim.lsp.config("denols", {
	root_dir = {
		root = "deno.json?",
		exclude = "package.json",
	},
})
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

vim.lsp.config("tsgo", {
	settings = {
		typescript = {
			inlayHints = {
				parameterNames = { enabled = "literals" },
				parameterTypes = { enabled = false },
				variableTypes = { enabled = false },
				propertyDeclarationTypes = { enabled = false },
				functionLikeReturnTypes = { enabled = false },
				enumMemberValues = { enabled = false },
			},
			preferences = {
				quoteStyle = "double",
				importModuleSpecifier = "non-relative",
				importModuleSpecifierEnding = "minimal",
			},
		},
	},
})

vim.lsp.config("ts_ls", {
	settings = {
		typescript = {
			inlayHints = {
				parameterNames = { enabled = "literals" },
				parameterTypes = { enabled = false },
				variableTypes = { enabled = false },
				propertyDeclarationTypes = { enabled = false },
				functionLikeReturnTypes = { enabled = false },
				enumMemberValues = { enabled = false },
			},
			preferences = {
				quoteStyle = "double",
				importModuleSpecifier = "non-relative",
				importModuleSpecifierEnding = "minimal",
			},
		},
	},
})

vim.lsp.config("vtsls", {
	single_file_support = false,
	handlers = {
		source_definition = function(err, locations) end,
		file_references = function(err, locations) end,
		code_action = function(err, actions) end,
	},
	settings = {
		vtsls = {
			maxTsServerMemory = 8192,
			enableMoveToFileCodeAction = true,
			autoUseWorkspaceTsdk = true,
			experimental = {
				completion = {
					enableServerSideFuzzyMatch = true,
					entriesLimit = 20,
				},
			},
		},
		typescript = {
			preferences = {
				quoteStyle = "double",
				importModuleSpecifier = "non-relative",
				importModuleSpecifierEnding = "minimal",
			},
		},
		javascript = {
			preferences = {
				quoteStyle = "double",
				importModuleSpecifier = "non-relative",
				importModuleSpecifierEnding = "minimal",
			},
		},
	},
})

vim.lsp.enable("jsonls")
vim.lsp.enable("turbo_ls")
vim.lsp.enable("tsgo")
-- vim.lsp.enable("ts_ls")
-- vim.lsp.enable("vtsls")
-- vim.lsp.enable("denols")
-- vim.lsp.enable("eslint")
