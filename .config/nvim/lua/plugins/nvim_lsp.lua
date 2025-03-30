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
			move_analyzer = {},
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
		local lspconfig = require("lspconfig")
		for server, config in pairs(opts.servers) do
			-- passing config.capabilities to blink.cmp merges with the capabilities in your
			-- `opts[server].capabilities, if you've defined it
			config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
			lspconfig[server].setup(config)
		end
	end,
}
