require('scissors').setup({
	snippetDir = vim.fn.stdpath('config') .. '/snippets',
	-- snippetDir = '~/.config/nvim/snippets',
})

require('luasnip.loaders.from_vscode').lazy_load({
	paths = { vim.fn.stdpath('config') .. '/snippets' },
})
