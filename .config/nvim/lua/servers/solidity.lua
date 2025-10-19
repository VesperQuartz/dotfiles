-- vim.lsp.enable("solidity_ls")
vim.lsp.enable("solidity")
vim.lsp.enable("solc")
vim.lsp.config("solidity", {
	settings = {
		solidity = {
			includePath = "",
			remapping = { ["@OpenZeppelin/"] = "OpenZeppelin/openzeppelin-contracts@4.6.0/" },
			allowPaths = {},
		},
	},
})
