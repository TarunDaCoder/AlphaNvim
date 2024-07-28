return {
	'chrisgrieser/nvim-scissors',
	dependencies = {
		{ 'L3MON4D3/LuaSnip', event = 'InsertEnter' },
	},
	event = 'InsertEnter',
	config = function()
		require('scissors').setup({
			-- snippetDir = vim.fn.stdpath('config') .. '/snippets',
			snippetDir = '~/.config/nvim/snippets',
		})

		require('luasnip').setup({
			paths = { '~/.config/nvim/snippets' },
		})
	end,
}
