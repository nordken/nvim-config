local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>x", ":bd<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Telescope
keymap("n", "<leader>ff",
  "<cmd>lua require 'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
  opts)
keymap("n", "<leader>fg", "<cmd>lua require 'telescope.builtin'.live_grep()<cr>", opts)
keymap("n", "<leader>fb", "<cmd>lua require 'telescope.builtin'.buffers()<cr>", opts)
keymap("n", "<leader>fh", "<cmd>lua require 'telescope.builtin'.help_tags()<cr>", opts)

-- Rust Debugging
keymap("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>", opts)
keymap("n", "<leader>ds",
  "<cmd>lua local widgets = require('dap.ui.widgets'); widgets.sidebar(widgets.scopes).open()<cr>", opts)
keymap("n", "<leader>dc",
  "<cmd>lua local widgets = require('dap.ui.widgets'); widgets.sidebar(widgets.scopes).close()<cr>", opts)

-- Crates
keymap('n', '<leader>ct', "<cmd>lua require('crates').toggle()<cr>", opts)
keymap('n', '<leader>cr', "<cmd>lua require('crates').reload()<cr>", opts)

keymap('n', '<leader>cv', "<cmd>lua require('crates').show_versions_popup()<cr>", opts)
keymap('n', '<leader>cf', "<cmd>lua require('crates').show_features_popup()<cr>", opts)
keymap('n', '<leader>cd', "<cmd>lua require('crates').show_dependencies_popup()<cr>", opts)

keymap('n', '<leader>cu', "<cmd>lua require('crates').update_crate()<cr>", opts)
keymap('v', '<leader>cu', "<cmd>lua require('crates').update_crates()<cr>", opts)
keymap('n', '<leader>ca', "<cmd>lua require('crates').update_all_crates()<cr>", opts)
keymap('n', '<leader>cU', "<cmd>lua require('crates').upgrade_crate()<cr>", opts)
keymap('v', '<leader>cU', "<cmd>lua require('crates').upgrade_crates()<cr>", opts)
keymap('n', '<leader>cA', "<cmd>lua require('crates').upgrade_all_crates()<cr>", opts)
