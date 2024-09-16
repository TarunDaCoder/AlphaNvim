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
	{ '<leadeer>r', ':RipSubstitute', desc = 'Search and Replace', icon = '󰍉 ' },
})

wk.add({
	{ '<leader>n', group = ' Snippets', icon = ' ' },
	{ '<leader>nn', ':ScissorsAddNewSnippet<CR>', desc = 'Add new snippet' },
	{ '<leader>ne', ':ScissorsEditSnippet<CR>', desc = 'Edit snippet' },
})

wk.add({
	{ '<leader>w', ':w!<CR>', desc = 'Save file' },
	{ '<leader>q', ':wqa!<CR>', desc = 'Save and quit' },
})
