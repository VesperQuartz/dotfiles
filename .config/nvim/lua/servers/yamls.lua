vim.lsp.enable("ansiblels")
vim.lsp.enable("dockerls")
vim.lsp.enable("docker_compose_language_service")
vim.lsp.enable("taplo")
vim.lsp.enable("yamlls")
vim.lsp.enable("nginx_language_server")
vim.lsp.config("yamlls", {
	settings = {
		yaml = {
			format = {
				enable = true,
			},
			schemas = {
				["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
				["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/refs/heads/master/v1.32.1-standalone-strict/all.json"] = "/*.k8s.yaml",
			},
		},
	},
})
vim.lsp.enable("systemd_ls")
