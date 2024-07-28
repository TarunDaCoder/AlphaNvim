require('scissors').setup({
	-- snippetDir = vim.fn.stdpath('config') .. '/snippets',
	snippetDir = '~/.config/nvim/snippets',
})

require('luasnip').setup({
	paths = { '~/.config/nvim/snippets' },
})
