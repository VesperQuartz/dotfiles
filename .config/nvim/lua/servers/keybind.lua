-- local lspconfig = require("lspconfig")
--[[ local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities =
vim.tbl_deep_extend("force", lsp_defaults.capabilities, require("cmp_nvim_lsp").default_capabilities()) ]]
-- Mappings.
--
local map = vim.keymap.set

local tscope = require("telescope.builtin")

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
map("n", "<space>e", vim.diagnostic.open_float)
map("n", "<space>q", vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local opts = { buffer = ev.buf }
		map("n", "gD", vim.lsp.buf.declaration, opts)
		map("n", "gd", tscope.lsp_definitions, opts)
		map("n", "K", vim.lsp.buf.hover, opts)
		map("n", "gi", vim.lsp.buf.implementation, opts)
		map("n", "<C-k>", vim.lsp.buf.signature_help, opts)
		map("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
		map("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
		map("n", "<space>wl", function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, opts)
		map("n", "<space>D", vim.lsp.buf.type_definition, opts)
		map("n", "<space>rn", vim.lsp.buf.rename, opts)
		map({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
		map("n", "gr", vim.lsp.buf.references, opts)
		map("n", "<space>f", function()
			vim.lsp.buf.format({ async = true })
		end, opts)
	end,
})

local opts = { noremap = true, silent = true }
local lsp_flags = {
	debounce_text_changes = 150,
}

--source lua & vim
--map("n", "<leader>")

-- Magic buffer-picking mode
map("n", "<C-p>", ":BufferPick<CR>", opts)

-- Window movement
map("n", "<C-h>", "<C-w>h", { silent = true })
map("n", "<C-j>", "<C-w>j", { silent = true })
map("n", "<C-k>", "<C-w>k", { silent = true })
map("n", "<C-l>", "<C-w>l", { silent = true })

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

-- Telescope 🔭
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)
map("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
map("n", "<leader>aa", ":CodeCompanionChat Toggle<CR>", opts)

-- move vertically by visual line (don't skip wrapped lines)
map("v", "j", "gj", { silent = true })
map("v", "k", "gk", { silent = true })

-- turn off search highlighting with <CR> (carriage-return)
map("n", "<CR>", ":nohlsearch<CR><CR>", opts)
map("n", "<F14>", ":NvimTreeToggle()<CR>", opts)
vim.keymap.set("n", "<S-F1>", function()
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

vim.keymap.set("n", "<leader>nl", function()
	require("noice").cmd("last")
end)

vim.keymap.set("n", "<leader>nh", function()
	require("noice").cmd("history")
end)
