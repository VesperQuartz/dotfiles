local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.enable("cssls")
vim.lsp.enable("emmet_language_server")
vim.lsp.config("emmet_language_server", {})

vim.lsp.config("cssls", {
	capabilities = capabilities,
})
