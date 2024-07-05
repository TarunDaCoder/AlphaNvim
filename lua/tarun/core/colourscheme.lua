-- ONEDARK ========================
require('onedarkpro').setup({
	options = {
		cursorline = true,
		transparency = true,
		highlight_inactive_windows = true,
	},
	styles = {
		comments = 'italic',
		functions = 'italic',
		keywords = 'italic',
		strings = 'italic',
		variables = 'italic',
	},
	plugins = {
		all = true,
	},
})

vim.cmd([[colorscheme onedark_vivid]])
