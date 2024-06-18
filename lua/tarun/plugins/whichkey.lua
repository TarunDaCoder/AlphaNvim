local wk = require('which-key')

wk.setup({
	window = {
		border = 'rounded',
	},
	icons = {
		breadcrumb = '➜',
		separator = '»',
		group = '+',
	},
	require('tarun.core.remaps'),
})
