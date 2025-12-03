return {
	"stevearc/conform.nvim",
	event = "BufReadPre",
	keys = {
		{
			"<leader>l",
			function()
				require("conform").format({ async = true, lsp_format = "never" })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		notify_on_error = true,
		formatters_by_ft = {
			http = { "kulala" },
			lua = { "stylua" },
			awk = { "awk" },
			go = { "gofmt", lsp_format = "fallback" },
			css = { "biome" },
			json = { "biome" },
			jsonc = { "biome" },
			javascriptreact = { "biome", "biome-organize-imports" },
			typescriptreact = { "biome", "biome-organize-imports" },
			javascript = { "biome", "biome-organize-imports" },
			typescript = { "biome", "biome-organize-imports" },
			typst = { lsp_format = "fallback" },
			rust = { "rustfmt", "dioxus", lsp_format = "fallback" },
			proto = { "buf", lsp_format = "fallback" },
			tex = { "latexindent", args = "-w" },
			caddyfile = { "caddyfile" },
			xml = { "xmllint", args = "--tabs" },
			solidity = { "forge", lsp_format = "fallback" },
			python = { "black" },
			["_"] = { "trim_whitespace" },
		},
		format_on_save = function(bufnr)
			return {
				timeout_ms = 500,
				lsp_format = "never",
			}
		end,
	},
	config = function(_, opts)
		opts.formatters = {
			kulala = {
				command = "kulala-fmt",
				args = { "format", "$FILENAME" },
				stdin = false,
			},
			proto = {
				command = "buf",
				args = { "format", "$FILENAME" },
				stdin = true,
				require_cwd = true,
				cwd = require("conform.util").root_file({ ".git" }),
				exit_codes = { 1 },
			},
			xml = {
				command = "xmllint",
				args = { "--format", "$FILENAME" },
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
		}
		require("conform").setup(opts)
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "json",
			callback = function(ev)
				vim.bo[ev.buf].formatprg = "jq"
			end,
		})
	end,
}
