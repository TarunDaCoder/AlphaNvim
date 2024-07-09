-- ONEDARK ========================
require('onedarkpro').setup({
	options = {
		cursorline = true,
		highlight_inactive_windows = true,
	},
	plugins = {
		all = true,
	},
})

vim.cmd([[colorscheme onedark_vivid]])
