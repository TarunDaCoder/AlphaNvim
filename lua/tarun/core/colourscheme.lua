-- Onedark {{{
require('onedarkpro').setup({
	options = {
		cursorline = true,
		highlight_inactive_windows = true,
		transparency = false,
	},
	plugins = {
		all = true,
	},
	styles = {
		types = 'NONE',
		methods = 'NONE',
		numbers = 'NONE',
		strings = 'NONE',
		comments = 'italic',
		keywords = 'bold,italic',
		constants = 'NONE',
		functions = 'italic',
		operators = 'NONE',
		variables = 'NONE',
		parameters = 'NONE',
		conditionals = 'italic',
		virtual_text = 'bold,italic',
	},
})

vim.cmd([[colorscheme onedark_vivid]])
-- }}}
