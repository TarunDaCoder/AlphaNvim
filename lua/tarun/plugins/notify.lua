local notify = require('notify')

notify.setup({
	timeout = 3000,
	-- background_color = '#16191f',
	render = 'wrapped-compact',
})

vim.cmd([[
hi NotifyBackground guibg = #16191f
]])
