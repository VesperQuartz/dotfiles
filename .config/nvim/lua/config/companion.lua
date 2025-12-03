require("codecompanion").setup({
	display = {
		chat = {
			auto_scroll = true,
			show_settings = true,
		},
	},
	strategies = {
		chat = {
			adapter = "openai",
			tools = {
				opts = {
					auto_submit_errors = true, -- Send any errors to the LLM automatically?
					auto_submit_success = true, -- Send any successful output to the LLM automatically?
				},
			},
		},
		inline = {
			adapter = "openai",
		},
	},
	adapters = {
		http = {
			openai = function()
				return require("codecompanion.adapters").extend("openai", {
					env = {
						api_key = "cmd:echo $COMPANION_KEY",
					},
				})
			end,
		},
	},
	extensions = {
		mcphub = {
			callback = "mcphub.extensions.codecompanion",
			opts = {
				make_vars = true,
				make_slash_commands = true,
				show_result_in_chat = true,
			},
		},
	},
})
