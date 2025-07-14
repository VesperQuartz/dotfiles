return {
	"saghen/blink.cmp",
	dependencies = {
		"Kaiser-Yang/blink-cmp-avante",
		-- "giuxtaposition/blink-cmp-copilot",
		{ "echasnovski/mini.icons", version = false },
	},

	version = "1.*",
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = {
			preset = "enter",
			["<S-Tab>"] = { "select_prev", "fallback" },
			["<Tab>"] = { "select_next", "fallback" },
		},

		completion = {
			documentation = { treesitter_highlighting = true, auto_show = true, window = { border = "single" } },
			accept = {
				auto_brackets = {
					enabled = true,
				},
			},
			menu = {
				draw = {
					components = {
						kind_icon = {
							text = function(ctx)
								local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
								return kind_icon
							end,
							highlight = function(ctx)
								local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
								return hl
							end,
						},
						kind = {
							highlight = function(ctx)
								local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
								return hl
							end,
						},
					},
				},
			},
		},
		cmdline = {
			enabled = true,
			keymap = {
				preset = "inherit",
				["<CR>"] = { "accept_and_enter", "fallback" },
			},
			completion = {
				ghost_text = { enabled = true },
				menu = {
					auto_show = true,
				},
			},
		},

		signature = { window = { border = "single" }, enabled = true },
		sources = {
			default = { "avante", "lsp", "buffer", "path" },
			per_filetype = { sql = { "dadbod" }, codecompanion = { "codecompanion" } },
			providers = {
				dadbod = { module = "vim_dadbod_completion.blink" },
				avante = {
					module = "blink-cmp-avante",
					name = "Avante",
					opts = {},
				},
				-- copilot = {
				-- 	name = "copilot",
				-- 	module = "blink-cmp-copilot",
				-- 	score_offset = 100,
				-- 	async = true,
				-- },
				path = {
					module = "blink.cmp.sources.path",
					score_offset = 3,
					fallbacks = { "buffer" },
					opts = {
						trailing_slash = true,
						label_trailing_slash = true,
						get_cwd = function(context)
							return vim.fn.expand(("#%d:p:h"):format(context.bufnr))
						end,
						show_hidden_files_by_default = true,
					},
				},
			},
			transform_items = function(_, items)
				return vim.tbl_filter(function(item)
					return item.kind ~= require("blink.cmp.types").CompletionItemKind.Snippet
				end, items)
			end,
		},
		fuzzy = { implementation = "lua" },
	},
	opts_extend = { "sources.default" },
}
