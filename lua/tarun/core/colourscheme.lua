-- Catppuccin {{{
require('catppuccin').setup({
	flavour = 'mocha',
	integrations = {
		alpha = true,
		notify = true,
		barbar = true,
		overseer = true,
		telescope = {
			enabled = true,
			style = 'nvchad',
		},
		lsp_trouble = true,
		which_key = true,
	},
	styles = {
		comments = { 'italic' },
		functions = { 'italic' },
		keywords = { 'italic' },
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
})

vim.cmd.colorscheme('catppuccin')
-- }}}
