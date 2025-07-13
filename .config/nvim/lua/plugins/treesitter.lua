return {
	"nvim-treesitter/nvim-treesitter",
	lazy = true,
	dependencies = {
		"nvim-treesitter/nvim-treesitter-refactor",
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	build = ":TSUpdate",
}
