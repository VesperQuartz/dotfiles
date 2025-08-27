return {
	"saghen/blink.cmp",
	dependencies = {
		"Kaiser-Yang/blink-cmp-avante",
		{ "echasnovski/mini.icons", version = false },
		{
			"supermaven-inc/supermaven-nvim",
			dependencies = { "huijiro/blink-cmp-supermaven" },
			opts = {
				-- @NOTE: the comment bellow say: only cmp (not blink.cmp) can handle the inline completion for now if disable on supermaven-nvim and maybe wrong comment.
				disable_inline_completion = true, -- disables inline completion for use with cmp
				disable_keymaps = false, -- disables built in keymaps for more manual control with blink.cmp
				keymaps = {
					accept_suggestion = nil,
					clear_suggestion = nil,
					accept_word = "<C-f>",
				},
			},
		},
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
			default = { "supermaven", "avante", "lazydev", "lsp", "buffer", "path" },
			per_filetype = { codecompanion = { "codecompanion" } },
			providers = {
				lazydev = {
					name = "LazyDev",
					module = "lazydev.integrations.blink",
					-- make lazydev completions top priority (see `:h blink.cmp`)
					score_offset = 100,
				},
				avante = {
					module = "blink-cmp-avante",
					name = "Avante",
					opts = {},
				},
				supermaven = {
					name = "supermaven",
					module = "blink-cmp-supermaven",
					async = true,
				},
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
		appearance = {
			kind_icons = {
				Maven = "",
			},
		},
	},
	opts_extend = { "sources.default" },
}
