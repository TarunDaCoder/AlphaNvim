local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local map = vim.keymap.set

-- Remap space as leader key
map('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymap to save file
map('n', '<leader>w', ':w!<CR>', opts)

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

-- LSP --
map('n', '<leader>r', vim.lsp.buf.rename, opts)
map('n', '<leader>gD', vim.lsp.buf.declaration, opts)
map('n', '<leader>gd', vim.lsp.buf.definition, opts)
map('n', '<leader>gh', vim.lsp.buf.hover, opts)
map('n', '<leader>gtd', vim.lsp.buf.type_definition, opts)
map('n', '<leader>sh', vim.lsp.buf.signature_help, opts)
map('n', '<leader>ca', vim.lsp.buf.code_action, opts)

-- Navigate buffers
map('n', '<TAB>', ':BufferLineCycleNext<CR>', opts)
map('n', '<S-TAB>', ':BufferLineCyclePrevious<CR>', opts)

-- PLugin stuff --
-- NvimTree
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>tt', ':Telescope<CR>', opts)
map('n', '<leader>th', ':Telescope help_tags<CR>', opts)
map('n', '<leader>thl', ':Telescope highlights<CR>', opts)
map('n', '<leader>tu', ':Telescope undo<CR>', opts)

-- Remove hl search
map('n', '<Esc>', ':nohlsearch<CR>', opts)

-- Whichkey
map({ 'n' }, '<leader>', ':WhichKey<CR>', opts)

-- Lazygit
map('n', '<leader>lg', ':LazyGit<CR>', opts)
