require("lspconfig").eslint.setup({})
require("lspconfig").jsonls.setup({
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
local util = require("lspconfig/util")

local function root_pattern_excludes(opt)
	local root = opt.root
	local exclude = opt.exclude

	local function matches(path, pattern)
		return 0 < #vim.fn.glob(util.path.join(path, pattern))
	end

	return function(startpath)
		return util.search_ancestors(startpath, function(path)
			return matches(path, root) and not matches(path, exclude)
		end)
	end
end

require("lspconfig").solidity_ls.setup({})
require("lspconfig").solidity.setup({})
require("lspconfig").solc.setup({})
require("lspconfig").denols.setup({
	root_dir = root_pattern_excludes({
		root = "deno.json?",
		exclude = "package.json",
	}),
})
require("lspconfig").vtsls.setup({
	single_file_support = false,
	root_dir = root_pattern_excludes({
		root = "package.json",
		exclude = "deno.json?",
	}),
})
