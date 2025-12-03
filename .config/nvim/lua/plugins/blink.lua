return {
	"saghen/blink.cmp",
	dependencies = {
		"echasnovski/mini.snippets",
		"joelazar/blink-calc",
		"bydlw98/blink-cmp-env",
		{ "echasnovski/mini.icons", version = false },
		{
			"supermaven-inc/supermaven-nvim",
			dependencies = { "huijiro/blink-cmp-supermaven" },
			opts = {
				-- @NOTE: the comment bellow say: only cmp (not blink.cmp) can handle the inline completion for now if disable on supermaven-nvim and maybe wrong comment.
				snippets = { preset = "mini_snippets" },
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
			["<A-l>"] = { "snippet_forward", "fallback" },
			["<A-h"] = { "snippet_backward", "fallback" },
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
								local kind_icon, _, _ = MiniIcons.get("lsp", ctx.kind)
								print(ctx.kind)
								if ctx.kind == "Snippet" then
									ctx.label_description = "Snippet"
									return ""
								end
								-- if ctx.kind == "Property" then
								-- 	ctx.label_description = "Assist"
								-- 	return ""
								-- end
								return kind_icon
							end,
							highlight = function(ctx)
								local _, hl, _ = MiniIcons.get("lsp", ctx.kind)
								return hl
							end,
						},
						kind = {
							highlight = function(ctx)
								local _, hl, _ = MiniIcons.get("lsp", ctx.kind)
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

		signature = { window = { border = "single" }, enabled = false },
		sources = {
			default = { "supermaven", "lazydev", "lsp", "buffer", "path", "snippets", "env", "calc" },
			per_filetype = { codecompanion = { "codecompanion" } },
			providers = {
				env = {
					name = "Env",
					module = "blink-cmp-env",
					opts = {
						show_braces = false,
						show_documentation_window = true,
					},
				},
				snippets = {
					min_keyword_length = 2,
					max_items = 15,
				},
				buffer = {
					min_keyword_length = 5,
					max_items = 5,
				},
				lazydev = {
					name = "LazyDev",
					module = "lazydev.integrations.blink",
					-- make lazydev completions top priority (see `:h blink.cmp`)
					score_offset = 100,
				},
				supermaven = {
					name = "supermaven",
					module = "blink-cmp-supermaven",
					async = true,
				},
				calc = {
					name = "Calc",
					module = "blink-calc",
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
		},
		fuzzy = { implementation = "lua" },
	},
	opts_extend = { "sources.default" },
}
