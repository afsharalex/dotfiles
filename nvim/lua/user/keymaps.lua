local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Project Explorer
-- keymap("n", "<leader>e", ":Lex 30<cr>", opts)
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)


-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)
-- keymap("n", "<leader>]", ":bnext<CR>", opts)
-- keymap("n", "<leader>[", ":bprevious<CR>", opts)

-- Move text up and down
-- keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
-- keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
-- keymap("v", "<A-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<A-k>", ":m .-2<CR>==", opts)
-- keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
-- keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Telescope --
-- Fuzzy Finder
keymap("n", "<leader>f-",  "<cmd>Telescope file_browser<cr>", opts)
keymap("n", "<leader>ff",  "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fg",  "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fb",  "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>fc",  "<cmd>Telescope commands<cr>", opts)
keymap("n", "<leader>fq",  "<cmd>Telescope quickfix<cr>", opts)
keymap("n", "<leader>fl",  "<cmd>Telescope loclist<cr>", opts)
keymap("n", "<leader>fsa", "<cmd>Telescope lsp_code_actions<cr>", opts)
keymap("n", "<leader>fsi", "<cmd>Telescope lsp_implementations<cr>", opts)
keymap("n", "<leader>fsr", "<cmd>Telescope lsp_references<cr>", opts)
keymap("n", "<leader>fsS", "<cmd>Telescope lsp_document_symbols<cr>", opts)
keymap("n", "<leader>fss", "<cmd>Telescope lsp_workspace_symbols<cr>", opts)
--keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
--keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>gf", "<cmd>Telescope git_files<cr>", opts)
keymap("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", opts)
keymap("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", opts)
