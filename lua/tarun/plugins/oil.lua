local oil = require('oil')
local map = vim.keymap.set

oil.setup({
	skip_confirm_for_simple_edits = true,
	view_options = {
		show_hidden = true,
		natural_order = true,
		is_always_hidden = function(name, _)
			return name == '..' or name == '.git'
		end,
		win_options = {
			wrap = true,
		},
	},
})
map('n', '-', ':Oil<CR>', { desc = 'Open parent directory' })
