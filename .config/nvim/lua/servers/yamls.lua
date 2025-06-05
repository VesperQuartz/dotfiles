vim.lsp.enable("ansiblels")
vim.lsp.enable("dockerls")
vim.lsp.enable("docker_compose_language_service")
vim.lsp.enable("taplo")
vim.lsp.enable("yamlls")
require("lspconfig").ansiblels.setup({})
require("lspconfig").dockerls.setup({})
require("lspconfig").docker_compose_language_service.setup({})
require("lspconfig").taplo.setup({})
vim.lsp.config("yamlls", {
	settings = {
		yaml = {
			schemas = {
				["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/v1.18.0-standalone-strict/all.json"] = "/*.k8s.yaml",
			},
		},
	},
})
