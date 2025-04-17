return {
	"neovim/nvim-lspconfig",
	dependencies = { "saghen/blink.cmp" },
	inlay_hints = { enabled = true },
	opts = {
		servers = {
			marksman = {},
			ansiblels = {},
			dockerls = {},
			lua_ls = {},
			zls = {},
			awk_ls = {},
			solidity_ls = {},
			solidity = {},
			solc = {},
			taplo = {},
			vimls = {},
			bashls = {},
			clangd = {},
			tailwindcss = {},
			texlab = {},
			elixirls = {},
			hls = {},
			html = {},
			astro = {},
			svelte = {},
			docker_compose_language_service = {},
			dartls = {},
			cssls = {},
			phpactor = {},
			gopls = {},
			sqlls = {},
			intelephense = {},
			rust_analyzer = {},
			move_analyzer = {
				cmd = { os.getenv("HOME") .. "/.sui/bin/move-analyzer" },
				filetypes = { "move" },
			},
			jedi_language_server = {},
			puppet = {},
			kotlin_language_server = {},
			jdtls = {},
			prismals = {},
			vtsls = {},
			denols = {},
		},
	},
	config = function(_, opts)
		local capabilities = {
			textDocument = { completion = { completionItem = { snippetSupport = false } } },
		}
		local lspconfig = require("lspconfig")
		for server, config in pairs(opts.servers) do
			config.capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)
			lspconfig[server].setup(config)
		end
	end,
}
