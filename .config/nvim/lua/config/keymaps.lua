local map = vim.keymap.set

map("n", "<space>e", vim.diagnostic.open_float)
map("n", "<space>q", vim.diagnostic.setloclist)

local lsp_flags = {
	debounce_text_changes = 150,
}

local opts = { noremap = true, silent = true }
map("n", "gD", ":FzfLua lsp_declarations<CR>", opts)
map("n", "gd", ":FzfLua lsp_definitions<CR>", opts)
map("n", "K", vim.lsp.buf.hover, opts)
map("n", "<space>gi", ":FzfLua lsp_implementations<CR>", opts)
map("n", "gi", ":FzfLua lsp_implementations<CR>", opts)
map("n", "<C-k>", vim.lsp.buf.signature_help, opts)
map("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
map("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
map("n", "<space>td", ":FzfLua lsp_typedefs<CR>", opts)
map("n", "<space>wl", function()
	print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end)
map("n", "<space>rn", vim.lsp.buf.rename, opts)
map({ "n", "v" }, "<space>ca", ":FzfLua lsp_code_actions<CR>", opts)
map("n", "<space>gr", ":FzfLua lsp_references<CR>", opts)
map("n", "gr", ":FzfLua lsp_references<CR>", opts)
map("n", "<space>f", function()
	vim.lsp.buf.format({ async = true })
end)
map("n", "<C-p>", ":BufferPick<CR>", opts)
map("n", "<C-h>", "<C-w>h", { silent = true })
map("n", "<C-j>", "<C-w>j", { silent = true })
map("n", "<C-k>", "<C-w>k", { silent = true })
map("n", "<C-l>", "<C-w>l", { silent = true })

-- Sort automatically by...
map("n", "<leader>ff", ":FzfLua files<CR>", opts)
map("n", "<leader>fb", ":FzfLua buffers<CR>", opts)
map("n", "<leader>fg", ":FzfLua live_grep_native<CR>", opts)
map("n", "<leader>fq", ":FzfLua grep_quickfix<CR>", opts)
map("n", "<leader>fp", ":FzfLua grep_project<CR>", opts)
map("n", "<leader>fd", ":FzfLua diagnostics_document<CR>", opts)
map("n", "<space>fd", ":FzfLua diagnostics_workspace<CR>", opts)

-- Sort automatically by...
map("n", "<Space>bb", ":BufferOrderByBufferNumber<CR>", opts)
map("n", "<Space>bd", ":BufferOrderByDirectory<CR>", opts)
map("n", "<Space>bl", ":BufferOrderByLanguage<CR>", opts)

-- Buffer movement
map("n", "<leader>l", ":ls<CR>", opts)
map("n", "<leader>p", ":bp<CR>", opts)
map("n", "<leader>n", ":bn<CR>", opts)
map("n", "<leader>g", ":e#<CR>", opts)
map("n", "<leader>1", ":1b<CR>", opts)
map("n", "<leader>2", ":2b<CR>", opts)
map("n", "<leader>3", ":3b<CR>", opts)
map("n", "<leader>4", ":4b<CR>", opts)
map("n", "<leader>5", ":5b<CR>", opts)
map("n", "<leader>7", ":7b<CR>", opts)
map("n", "<leader>8", ":8b<CR>", opts)
map("n", "<leader>9", ":9b<CR>", opts)
map("n", "<leader>0", ":10b<CR>", opts)

map("n", "<leader>6", ":6b<CR>", opts)
-- Resize Buffer
map("n", "<Leader>+", ':exe "resize " . (winheight(0) * 3/2)<CR>', opts)
map("n", "<Leader>-", ':exe "resize " . (winheight(0) * 2/3)<CR>', opts)

-- move vertically by visual line (don't skip wrapped lines)
map("v", "j", "gj", { silent = true })
map("v", "k", "gk", { silent = true })

-- turn off search highlighting with <CR> (carriage-return)
map("n", "<CR>", ":nohlsearch<CR><CR>", opts)
map("n", "<F14>", ":NvimTreeToggle()<CR>", opts)
-- map("n", "<S-F1>", function()
-- 	require("mini.files").open()
-- end)
--
map("n", "<F13>", function()
	require("mini.files").open()
end)

-- Dashboard provides session support. With SessionLoad and SessionSave
map("n", "<leader>ss", ":SessionSave<CR>", opts)
map("n", "<leader>sl", ":SessionLoad<CR>", opts)

-- formating
--map("n", "ff", "vim.lsp.buf.formatting()<CR>", opts)
--map("n", "<leader>s", "vim.lsp.buf.formatting()<CR>", opts)
--
map("n", "<leader>rr", ":Rest run<CR>", {})
map("n", "<leader>rl", ":Rest run last<CR>", {})

-- Jumping
map("n", "<leader>nb", "<C-o>", opts)

-- Jumping
map("n", "<leader>nb", "<C-o>", opts)

map("t", "<leader>tt", "<C-\\><C-n>", opts)

map("n", "<leader>nl", function()
	require("noice").cmd("last")
end)

map("n", "<leader>nh", function()
	require("noice").cmd("history")
end)

-- load the session for the current directory
map("n", "<leader>qs", function()
	require("persistence").load()
end)

-- select a session to load
map("n", "<leader>qS", function()
	require("persistence").select()
end)

-- load the last session
map("n", "<leader>ql", function()
	require("persistence").load({ last = true })
end)

-- stop Persistence => session won't be saved on exit
map("n", "<leader>qd", function()
	require("persistence").stop()
end)

map({ "n", "v" }, "<C-a>", ":CodeCompanionActions<cr>", { noremap = true, silent = true })
map({ "n", "v" }, "<LocalLeader>a", ":CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
map("v", "ga", ":CodeCompanionChat Add<cr>", { noremap = true, silent = true })
map({ "n", "v" }, "<leader>aa", ":CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
