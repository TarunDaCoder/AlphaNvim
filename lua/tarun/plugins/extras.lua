return {
	{ 'VonHeikemen/fine-cmdline.nvim', event = 'VeryLazy' },
	{ 'VonHeikemen/searchbox.nvim', event = 'VeryLazy' },
	{ 'olimorris/onedarkpro.nvim', lazy = true },
	{ 'TarunDaCoder/sus.nvim', event = 'VeryLazy', opts = {} },
	{ 'OXY2DEV/markview.nvim', ft = 'markdown', opts = {} },
	{ 'monkoose/neocodeium', event = 'VeryLazy', opts = {} },
	{ 'barrett-ruth/live-server.nvim', event = 'VeryLazy', opts = {} },
	{
		'olrtg/nvim-emmet',
		keys = {
			{ 'n', '<leader>xe', require('nvim-emmet').wrap_with_abbreviation, { desc = 'Emmet' } },
		},
	},
}
