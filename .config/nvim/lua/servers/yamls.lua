vim.lsp.enable("ansiblels")
vim.lsp.enable("dockerls")
vim.lsp.enable("docker_compose_language_service")
vim.lsp.enable("taplo")
vim.lsp.enable("yamlls")
vim.lsp.enable("nginx_language_server")
vim.lsp.config("yamlls", {
	settings = {
		yaml = {
			schemaStore = {
				enable = false,
				url = "",
			},
			schemas = require("schemastore").yaml.schemas(),
			format = {
				enable = true,
			},
		},
	},
})
vim.lsp.enable("systemd_lsp")
