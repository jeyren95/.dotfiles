local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

------ Leader key ------
keymap("", "<Space>", "<Nop>", opts)

------ Modes ------
-- normal_mode = "n"
-- insert_mode = "i"
-- visual_mode = "v"
-- visual_block_mode = "x"
-- term_mode = "t"
-- command_mode = "c"


------ Normal mode ------
-- Window split
keymap("n", "<C-s>", "<cmd>vert sb<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-n>", "<C-w>n", opts)

-- Resize window with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Delete current buffer
keymap("n", "<S-b>", ":bd<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>lg", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<leader>gs", "<cmd>Telescope git_status<CR>", opts)

-- Format
keymap("n", "<leader>.", ":lua vim.lsp.buf.format()<CR>", opts)

-- Cursor
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Hover 
keymap("n", "<leader>h", ":lua vim.lsp.buf.hover()<CR>", opts)

------ Visual mode ------
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
