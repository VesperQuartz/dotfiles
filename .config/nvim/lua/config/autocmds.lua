vim.cmd([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.hl.on_yank()
  augroup end
]])

vim.cmd([[ autocmd BufRead,BufNewFile *.org set filetype=org ]])
vim.cmd([[ autocmd BufRead,BufNewFile *.caddy set filetype=caddy ]])
vim.cmd([[ autocmd BufRead,BufNewFile *.org set filetype=org ]])
vim.cmd([[
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent! loadview
]])

vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("EnableTreesitterHighlighting", { clear = true }),
	desc = "Try to enable tree-sitter syntax highlighting",
	pattern = "*", -- run on *all* filetypes
	callback = function()
		pcall(function()
			vim.treesitter.start()
		end)
	end,
})

vim.cmd([[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]])

vim.api.nvim_create_user_command("OpenPdf", function()
	local filepath = vim.api.nvim_buf_get_name(0)
	if filepath:match("%.typ$") then
		local pdf_path = filepath:gsub("%.typ$", ".pdf")

		vim.system({ "open", pdf_path })
	end
end, {})
vim.cmd([[cab cc CodeCompanion]])
vim.api.nvim_create_autocmd("User", {
	pattern = "MiniFilesActionRename",
	callback = function(event)
		Snacks.rename.on_rename_file(event.data.from, event.data.to)
	end,
})
