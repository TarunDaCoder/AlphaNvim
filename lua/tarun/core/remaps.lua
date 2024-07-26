local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local map = vim.keymap.set

-- Remap space as leader key
map('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- Keymap to save file
map('n', '<leader>w', ':w!<CR>', { desc = 'Save file' }, opts)

-- Normal mode --
-- Better window navigation
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
map('n', '<C-Up>', ':resize +2<CR>', opts)
map('n', '<C-Down>', ':resize -2<CR>', opts)
map('n', '<C-Left>', ':vertical resize -2<CR>', opts)
map('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Remove hl search
map('n', '<Esc>', ':nohlsearch<CR>', opts)

-- Visual mode --
-- Stay in indent mode
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- Move text up and down
map('v', '<A-j>', ':m .+1<CR>==', opts)
map('v', '<A-k>', ':m .-2<CR>==', opts)
map('v', 'p', '"_dP', opts)

-- Visual block mode --
-- Move text up and down
map('x', 'J', ":move '>+1<CR>gv-gv", opts)
map('x', 'K', ":move '<-2<CR>gv-gv", opts)
map('x', '<A-j>', ":move '>+1<CR>gv-gv", opts)
map('x', '<A-k>', ":move '<-2<CR>gv-gv", opts)

-- Terminal mode --
-- Better terminal navigation
map('t', '<C-h>', '<C-\\><C-N><C-w>h', term_opts)
map('t', '<C-j>', '<C-\\><C-N><C-w>j', term_opts)
map('t', '<C-k>', '<C-\\><C-N><C-w>k', term_opts)
map('t', '<C-l>', '<C-\\><C-N><C-w>l', term_opts)

-- Navigate buffers
map('n', '<TAB>', ':BufferNext<CR>', opts)
map('n', '<S-TAB>', ':BufferPrevious<CR>', opts)
map('n', '<c-w>', ':BufferClose<CR>', opts)

-- Cmdline and searchbox
map('n', ':', '<cmd>FineCmdline<CR>', opts)
map('n', '/', "<cmd>lua require('searchbox').incsearch()<CR>", opts)

map('i', '<A-f>', function()
	require('neocodeium').accept()
end)
map('i', '<A-w>', function()
	require('neocodeium').accept_word()
end)
map('i', '<A-a>', function()
	require('neocodeium').accept_line()
end)
map('i', '<A-e>', function()
	require('neocodeium').cycle_or_complete()
end)
map('i', '<A-r>', function()
	require('neocodeium').cycle_or_complete(-1)
end)
map('i', '<A-c>', function()
	require('neocodeium').clear()
end)
