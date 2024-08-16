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
})

vim.cmd([[colorscheme onedark_vivid]])
-- }}}
