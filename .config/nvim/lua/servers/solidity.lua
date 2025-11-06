vim.lsp.enable("solidity_ls")
vim.lsp.enable("solc")
vim.lsp.config("solidity_ls", {
	settings = {
		solidity = {
			includePath = "",
			remappingsUnix = {
				["@OpenZeppelin/"] = "OpenZeppelin/openzeppelin-contracts@4.6.0/",
				["forge-std"] = "lib/forge-std/src/",
			},
			allowPaths = {},
		},
	},
})
