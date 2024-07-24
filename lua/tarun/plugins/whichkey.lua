local wk = require('which-key')

wk.setup({
	preset = 'helix',
	delay = 50,
	notify = true,
})

wk.add({
	{ '<leader>f', group = ' Telescope' },
	{ '<leader>ff', ':Telescope find_files<CR>', desc = 'Find files' },
	{ '<leader>fg', ':Telescope live_grep<CR>', desc = 'Live grep', icon = '󰍉 ' },
	{ '<leader>fh', ':Telescope help_tags<CR>', desc = 'Help tags', icon = '󰋖 ' },
	{ '<leader>fl', ':Telescope highlights<CR>', desc = 'Highlights', icon = '󰸱 ' },
	{ '<leader>fs', ':Telescope symbols<CR>', desc = 'Symbols', icon = ' ' },
	{ '<leader>ft', ':Telescope<CR>', desc = 'Telescope' },
	{ '<leader>fu', ':Telescope undo<CR>', desc = 'Undo changes', icon = '󰕍 ' },
})

wk.add({
	{ '<leader>l', group = ' LSP', icon = ' ' },
	{ '<leader>lD', vim.lsp.buf.declaration, desc = 'Go to declaration', icon = ' ' },
	{ '<leader>la', vim.lsp.buf.code_action, desc = 'Code Action' },
	{ '<leader>le', vim.diagnostic.open_float, desc = 'Show diagnostics' },
	{ '<leader>lh', vim.lsp.buf.hover, desc = 'Hover', icon = '󰉪 ' },
	{ '<leader>li', vim.lsp.buf.implementation, desc = 'Goto implementation', icon = ' ' },
	{ '<leader>ls', vim.lsp.buf.signature_help, desc = 'Signature help', icon = '󰋖 ' },
	{ '<leader>lt', vim.lsp.buf.type_definition, desc = 'Type definition', icon = ' ' },
	{ '<leader>ld', vim.lsp.buf.goto_definition, desc = 'Go to definition', icon = ' ' },
	{ '<leader>lf', vim.lsp.buf.formatting, desc = 'Format' },
})

wk.add({
	{ '<leader>g', group = ' Gitsigns', icon = '' },
	{ '<leader>ga', ':Gitsigns stage_buffer<CR>', desc = 'Stage buffer' },
	{ '<leader>gb', ':Gitsigns reset_buffer<CR>', desc = 'Reset buffer' },
	{ '<leader>gd', ':Gitsigns diffthis<CR>', desc = 'Diff this', icon = ' ' },
	{ '<leader>gh', ':Gitsigns preview_hunk<CR>', desc = 'Preview hunk', icon = ' ' },
	{ '<leader>gl', ':Gitsigns toggle_current_line_blame<CR>', desc = 'Toggle current line blame' },
	{ '<leader>gn', ':Gitsigns next_hunk<CR>', desc = 'Next hunk', icon = '󰼧 ' },
	{ '<leader>gp', ':Gitsigns prev_hunk<CR>', desc = 'Previous hunk', icon = '󰼨 ' },
	{ '<leader>gr', ':Gitsigns reset_hunk<CR>', desc = 'Reset hunk', icon = '󰝳 ' },
	{ '<leader>gs', ':Gitsigns stage_hunk<CR>', desc = 'Stage hunk', icon = ' ' },
	{ '<leader>gt', ':Gitsigns reset_buffer<CR>', desc = 'Reset buffer', icon = '󰝳 ' },
	{ '<leader>gu', ':Gitsigns undo_stage_hunk<CR>', desc = 'Undo stage hunk', icon = '󰕍 ' },
})

wk.add({
	{ '<leader>e', group = ' NvimTree', icon = '󱁕' },
	{ '<leader>ee', ':NvimTreeToggle<CR>', desc = 'Toggle' },
	{ '<leader>ef', ':NvimTreeFindFile<CR>', desc = 'Find file' },
})

wk.add({
	{ '<leader>s', group = ' Spectre', icon = '󰛔 ' },
	{
		'<leader>sp',
		":lua require('spectre').open_file_search({select_word=true})<CR>",
		desc = 'Search in current file',
	},
	{ '<leader>ss', ":lua require('spectre').toggle()<CR>", desc = 'Find and replace' },
	{ '<leader>sw', ":lua require('spectre').open_visual()<CR>", desc = 'Search current word' },
})
