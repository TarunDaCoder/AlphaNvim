local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local map = vim.keymap.set

-- Remap space as leader key
map('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

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
map('n', '<leader>lr', vim.lsp.buf.rename, { desc = 'Rename' }, opts)
map('n', '<leader>lD', vim.lsp.buf.declaration, { desc = 'Go to declaration' }, opts)
map('n', '<leader>ld', vim.lsp.buf.definition, { desc = 'Go to definition' }, opts)
map('n', '<leader>lh', vim.lsp.buf.hover, { desc = 'Hover' }, opts)
map('n', '<leader>lt', vim.lsp.buf.type_definition, { desc = 'Go to type definition' }, opts)
map('n', '<leader>ls', vim.lsp.buf.signature_help, { desc = 'Signature help' }, opts)
map('n', '<leader>lc', vim.lsp.buf.code_action, { desc = 'Code action' }, opts)

-- Navigate buffers
map('n', '<TAB>', ':BufferLineCycleNext<CR>', opts)
map('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', opts)

-- PLugin stuff --
-- NvimTree
map('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Nvim Tree' }, opts)

-- Telescope
map('n', '<leader>tf', ':Telescope find_files<CR>', { desc = 'Find files' }, opts)
map('n', '<leader>tg', ':Telescope live_grep<CR>', { desc = 'Live grep' }, opts)
map('n', '<leader>tt', ':Telescope<CR>', { desc = 'Telescope' }, opts)
map('n', '<leader>th', ':Telescope help_tags<CR>', { desc = 'Help tags' }, opts)
map('n', '<leader>thl', ':Telescope highlights<CR>', { desc = 'Highlights' }, opts)
map('n', '<leader>tu', ':Telescope undo<CR>', { desc = 'Undo changes' }, opts)

-- Remove hl search
map('n', '<Esc>', ':nohlsearch<CR>', opts)

-- Gitsigns
map('n', '<leader>gs', ':Gitsigns stage_hunk<CR>', { desc = 'Stage hunk' }, opts)
map('n', '<leader>gu', ':Gitsigns undo_stage_hunk<CR>', { desc = 'Undo stage hunk' }, opts)
map('n', '<leader>gr', ':Gitsigns reset_hunk<CR>', { desc = 'Reset hunk' }, opts)
map('n', '<leader>gt', ':Gitsigns reset_buffer<CR>', { desc = 'Reset buffer' }, opts)
map('n', '<leader>ga', ':Gitsigns stage_buffer<CR>', { desc = 'Stage buffer' }, opts)
map('n', '<leader>gi', ':Gitsigns toggle_current_line_blame<CR>', { desc = 'Toggle current line blame' }, opts)
map('n', '<leader>gd', ':Gitsigns diffthis<CR>', { desc = 'Diff this' }, opts)
map('n', '<leader>gh', ':Gitsigns preview_hunk<CR>', { desc = 'Preview hunk' }, opts)
map('n', '<leader>gS', ':Gitsigns stage_buffer<CR>', { desc = 'Stage buffer' }, opts)
map('n', '<leader>gu', ':Gitsigns reset_buffer<CR>', { desc = 'Reset buffer' }, opts)
map('n', '<leader>gn', ':Gitsigns next_hunk<CR>', { desc = 'Next hunk' }, opts)
map('n', '<leader>gp', ':Gitsigns prev_hunk<CR>', { desc = 'Previous hunk' }, opts)
