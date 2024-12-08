require("lspconfig").bashls.setup({})
require("lspconfig").awk_ls.setup({})
require("lspconfig").elixirls.setup({
	cmd = { "/usr/bin/elixir-ls" },
	autostart = true,
})
