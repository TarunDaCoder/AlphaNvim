local wk = require('which-key')
local opts = { noremap = true, silent = true }

wk.setup({
	preset = 'helix',
	delay = 50,
	notify = true,
})

wk.add({
	{ '<leader>t', group = ' Telescope' },
	{ '<leader>tf', ':Telescope find_files<CR>', desc = 'Find files' },
	{ '<leader>tg', ':Telescope live_grep<CR>', desc = 'Live grep' },
	{ '<leader>th', ':Telescope help_tags<CR>', desc = 'Help tags' },
	{ '<leader>tl', ':Telescope highlights<CR>', desc = 'Highlights' },
	{ '<leader>ts', ':Telescope symbols<CR>', desc = 'Symbols' },
	{ '<leader>tt', ':Telescope<CR>', desc = 'Telescope' },
	{ '<leader>tu', ':Telescope undo<CR>', desc = 'Undo changes' },
})

wk.add({
	{ '<leader>l', group = '  LSP' },
	{ '<leader>lD', vim.lsp.buf.declaration, desc = 'Go to declaration' },
	{ '<leader>la', require('actions-preview').code_actions, desc = 'Code Action' },
	{ '<leader>le', vim.diagnostic.open_float, desc = 'Show diagnostics' },
	{ '<leader>lh', vim.lsp.buf.hover, desc = 'Hover' },
	{ '<leader>li', vim.lsp.buf.implementation, desc = 'Goto implementation' },
	{ '<leader>lr', vim.lsp.buf.rename, desc = 'Rename' },
	{ '<leader>ls', vim.lsp.buf.signature_help, desc = 'Signature help' },
	{ '<leader>lt', vim.lsp.buf.type_definition, desc = 'Type definition' },
	{ '<leader>ld', vim.lsp.buf.goto_definition, desc = 'Go to definition' },
	{ '<leader>lf', vim.lsp.buf.formatting, desc = 'Format' },
})

wk.add({
	{ '<leader>g', group = ' Gitsigns', icon = '' },
	{ '<leader>ga', ':Gitsigns stage_buffer<CR>', desc = 'Stage buffer' },
	{ '<leader>gb', ':Gitsigns reset_buffer<CR>', desc = 'Reset buffer' },
	{ '<leader>gd', ':Gitsigns diffthis<CR>', desc = 'Diff this' },
	{ '<leader>gh', ':Gitsigns preview_hunk<CR>', desc = 'Preview hunk' },
	{ '<leader>gl', ':Gitsigns toggle_current_line_blame<CR>', desc = 'Toggle current line blame' },
	{ '<leader>gn', ':Gitsigns next_hunk<CR>', desc = 'Next hunk' },
	{ '<leader>gp', ':Gitsigns prev_hunk<CR>', desc = 'Previous hunk' },
	{ '<leader>gr', ':Gitsigns reset_hunk<CR>', desc = 'Reset hunk' },
	{ '<leader>gs', ':Gitsigns stage_hunk<CR>', desc = 'Stage hunk' },
	{ '<leader>gt', ':Gitsigns reset_buffer<CR>', desc = 'Reset buffer' },
	{ '<leader>gu', ':Gitsigns undo_stage_hunk<CR>', desc = 'Undo stage hunk' },
})

wk.add({
	{ '<leader>e', group = ' NvimTree', icon = '󱁕' },
	{ '<leader>ee', ':NvimTreeToggle<CR>', desc = 'Toggle' },
	{ '<leader>ef', ':NvimTreeFindFile<CR>', desc = 'Find file' },
	{ '<leader>er', ':NvimTreeRefresh<CR>', desc = 'Refresh' },
})

wk.add({
	{ '<leader>s', group = ' Spectre', icon = '󰈞' },
	{
		'<leader>sp',
		":lua require('spectre').open_file_search({select_word=true})<CR>",
		desc = 'Search in current file',
	},
	{ '<leader>ss', ":lua require('spectre').toggle()<CR>", desc = 'Find and replace' },
	{ '<leader>sw', ":lua require('spectre').open_visual()<CR>", desc = 'Search current word' },
})
