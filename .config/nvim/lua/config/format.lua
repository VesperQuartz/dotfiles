-- Utilities for creating configurations
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		awk = { "awk" },
		go = { "gofmt", lsp_format = "fallback" },
		css = { "biome" },
		json = { "biome" },
		javascriptreact = { "biome", "biome-organize-imports" },
		typescriptreact = { "biome", "biome-organize-imports" },
		javascript = { "biome", "biome-organize-imports" },
		typescript = { "biome", "biome-organize-imports" },
		rust = { "rustfmt", "dioxus", lsp_format = "fallback" },
		proto = { "buf", lsp_format = "fallback" },
		tex = { "latexindent", args = "-w" },
		caddyfile = { "caddyfile" },
		solidity = { "forge", lsp_format = "fallback" },
		python = { "black" },
		["_"] = { "trim_whitespace" },
	},
	format_on_save = {
		-- I recommend these options. See :help conform.format for details.
		lsp_format = "fallback",
		timeout_ms = 5000,
	},
	notify_on_error = true,
	notify_no_formatters = true,
	formatters = {
		proto = {
			command = "buf",
			args = { "format", "$FILENAME" },
			stdin = true,
			require_cwd = true,
			cwd = require("conform.util").root_file({ ".git" }),
			exit_codes = { 1 },
		},
		caddyfile = {
			command = "caddy",
			args = { "fmt", "$FILENAME" },
			stdin = true,
			require_cwd = true,
			cwd = require("conform.util").root_file({ "Caddyfile" }),
			exit_codes = { 1 },
		},
		forge = {
			command = "forge",
			args = { "fmt", "$FILENAME" },
			stdin = false,
			require_cwd = true,
			cwd = require("conform.util").root_file({ "foundry.toml", "remappings.txt" }),
		},
		dioxus = {
			command = "dx",
			args = { "fmt", "--file", "$FILENAME" },
			stdin = false,
			require_cwd = true,
			cwd = require("conform.util").root_file({ "Dioxus.toml" }),
		},
	},
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "json",
	callback = function(ev)
		vim.bo[ev.buf].formatprg = "jq"
		vim.api.nvim_set_option_value("formatprg", "jq", { scope = "local" })
	end,
})
