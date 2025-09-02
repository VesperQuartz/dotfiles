return {
	"neovim/nvim-lspconfig",
	dependencies = { "saghen/blink.cmp" },
	inlay_hints = { enabled = true },
	capabilities = require("blink.cmp").get_lsp_capabilities({
		textDocument = { completion = { completionItem = { snippetSupport = true } } },
	}),
}
