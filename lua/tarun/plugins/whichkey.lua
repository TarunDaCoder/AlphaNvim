local wk = require('which-key')
local opts = { noremap = true, silent = true }

wk.setup({
	window = {
		border = 'rounded',
	},
	icons = {
		breadcrumb = '➜',
		separator = '»',
		group = '+',
	},
})

wk.register({
	t = {
		name = 'Telescope',
		f = { ':Telescope find_files<CR>', 'Find files', opts },
		g = { ':Telescope live_grep<CR>', 'Live grep', opts },
		h = { ':Telescope help_tags<CR>', 'Help tags', opts },
		s = { ':Telescope highlights<CR>', 'Highlights', opts },
		u = { ':Telescope undo<CR>', 'Undo changes', opts },
		t = { ':Telescope<CR>', 'Telescope', opts },
	},
	prefix = '<leader>',
})

wk.register({
	l = {
		name = 'LSP',
		r = { vim.lsp.buf.rename, 'Rename', opts },
		d = { vim.lsp.goto_definition, 'Goto definition', opts },
		i = { vim.lsp.buf.implementation, 'Goto implementation', opts },
		a = { vim.lsp.buf.code_action, 'Code action', opts },
		f = { vim.lsp.buf.formatting, 'Format', opts },
		s = { vim.lsp.buf.signature_help, 'Signature help', opts },
		D = { vim.lsp.buf.declaration, 'Go to declaration', opts },
		t = { vim.lsp.buf.type_definition, 'Type definition', opts },
		e = { vim.diagnostic.open_float, 'Show diagnostics', opts },
		h = { vim.lsp.buf.hover, 'Hover', opts },
	},
	prefix = '<leader>',
})

wk.register({
	g = {
		name = 'Gitsigns',
		s = { ':Gitsigns stage_hunk<CR>', 'Stage hunk', opts },
		u = { ':Gitsigns undo_stage_hunk<CR>', 'Undo stage hunk', opts },
		r = { ':Gitsigns reset_hunk<CR>', 'Reset hunk', opts },
		t = { ':Gitsigns reset_buffer<CR>', 'Reset buffer', opts },
		a = { ':Gitsigns stage_buffer<CR>', 'Stage buffer', opts },
		b = { ':Gitsigns reset_buffer<CR>', 'Reset buffer', opts },
		d = { ':Gitsigns diffthis<CR>', 'Diff this', opts },
		h = { ':Gitsigns preview_hunk<CR>', 'Preview hunk', opts },
		n = { ':Gitsigns next_hunk<CR>', 'Next hunk', opts },
		p = { ':Gitsigns prev_hunk<CR>', 'Previous hunk', opts },
		l = { ':Gitsigns toggle_current_line_blame<CR>', 'Toggle current line blame', opts },
	},
	prefix = '<leader>',
})

wk.register({
	e = {
		name = 'NvimTree',
		e = { ':NvimTreeToggle<CR>', 'Toggle', opts },
		f = { ':NvimTreeFindFile<CR>', 'Find file', opts },
		r = { ':NvimTreeRefresh<CR>', 'Refresh', opts },
	},
	prefix = '<leader>',
})
