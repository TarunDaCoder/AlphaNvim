vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
	pattern = { '*.norg' },
	command = 'set conceallevel=3',
})

local neorg = require('neorg')
neorg.setup({
	load = {
		['core.defaults'] = {},
		['core.completion'] = {
			config = {
				engine = {
					module_name = 'external.lsp-completion',
				},
			},
		},
		['core.concealer'] = {
			config = {
				markup_preset = 'conceal',
				icon_preset = 'diamond',
				icons = {
					todo = {
						undone = {
							icon = '',
						},
						pending = {
							icon = '󰏫',
						},
						uncertain = {
							icon = '?',
						},
						urgent = {
							icon = '!',
						},
						on_hold = {
							icon = '',
						},
						cancelled = {
							icon = '',
						},
						done = {
							icon = '',
						},
					},
				},
			},
		},
		['core.dirman'] = {
			config = {
				workspaces = {
					alphanvim_todos = '~/.config/nvim/',
					notes = '~/dev/notes/',
				},
				autodetect = true,
				autochdir = true,
			},
		},
		['core.integrations.telescope'] = {},
		['external.interim-ls'] = {
			config = {
				completion_provider = {
					enable = true,
					categories = true,
				},
			},
		},
		['core.ui'] = {},
		['external.search'] = {
			config = {
				index_on_start = true,
			},
		},
	},
})
