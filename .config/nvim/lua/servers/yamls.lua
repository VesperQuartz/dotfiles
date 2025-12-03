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
				-- You must disable built-in schemaStore support if you want to use
				-- this plugin and its advanced options like `ignore`.
				enable = false,
				-- Avoid TypeError: Cannot read properties of undefined (reading 'length')
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
