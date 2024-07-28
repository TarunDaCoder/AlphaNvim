return {
	'rcarriga/nvim-notify',
	event = 'VeryLazy',
	config = function()
		require('notify').setup({
			render = 'default',
		})

		vim.notify = require('notify')
	end,
}
