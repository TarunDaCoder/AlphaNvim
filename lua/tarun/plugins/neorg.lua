vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
	pattern = { '*.norg' },
	command = 'set conceallevel=3',
})

local neorg = require('neorg')
neorg.setup({
	load = {
		['core.defaults'] = {},
		-- ['core.completion'] = {
		-- 	config = {
		-- 		engine = 'nvim-cmp',
		-- 	},
		-- },
		['core.concealer'] = {
			config = {
				markup_preset = 'conceal',
				icon_preset = 'diamond',
				icons = {
					todo = {
						pending = {
							icon = ' ',
						},
						uncertain = {
							icon = '?',
						},
						urgent = {
							icon = '',
						},
						on_hold = {
							icon = '󰏦 ',
						},
						cancelled = {
							icon = ' ',
						},
					},
				},
			},
		},
		['core.dirman'] = {
			config = {
				workspaces = {
					alphanvim_todos = '~/.config/nvim/',
					neorg = '~/dev/neorg/',
				},
				autodetect = true,
				autochdir = true,
			},
		},
		['core.integrations.telescope'] = {},
		['external.interim-ls'] = {},
	},
})
