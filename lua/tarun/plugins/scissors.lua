require('scissors').setup({
	snippetDir = vim.fn.stdpath('config') .. '/snippets',
})

require('luasnip').setup({
	paths = { '/home/tarun/.config/nvim/snippets' },
})
