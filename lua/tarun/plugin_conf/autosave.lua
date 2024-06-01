local autosave = require('autosave')

autosave.setup({
	execution_message = 'Just saved your file before the world collapses or you type `:qa!`',
	write_all_buffers = true,
})
