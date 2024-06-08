local barbar = require('barbar')

vim.g.barbar_auto_setup = false

barbar.setup({
	icons = {
		button = ' ',
	},
})

-- BARBECUE ==========================
require('barbecue').setup({
    theme = 'onedark',
    show_modified = true,
})
