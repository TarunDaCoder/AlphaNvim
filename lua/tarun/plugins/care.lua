-- Care config ================================================
vim.keymap.set('i', '<c-n>', function()
	vim.snippet.jump(1)
end)
vim.keymap.set('i', '<c-p>', function()
	vim.snippet.jump(-1)
end)
vim.keymap.set('i', '<c-space>', function()
	require('care').api.complete()
end)

vim.keymap.set('i', '<cr>', '<Plug>(CareConfirm)')
vim.keymap.set('i', '<c-e>', '<Plug>(CareClose)')
vim.keymap.set('i', '<tab>', '<Plug>(CareSelectNext)')
vim.keymap.set('i', '<s-tab>', '<Plug>(CareSelectPrev)')

vim.api.nvim_create_autocmd('InsertLeave', {
	callback = function()
		require('care').core.menu:close()
	end,
})
