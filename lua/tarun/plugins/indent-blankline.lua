return {
	'lukas-reineke/indent-blankline.nvim',
	event = 'VeryLazy',
	config = function()
		local g = vim.g
		g.indent_blankline_buftype_exclude = { 'terminal', 'nofile' }
		g.indent_blankline_filetype_exclude = {
			'help',
			'alpha',
			'NvimTree',
			'Trouble',
		}

		g.indent_blankline_char = '│ '
		g.indent_blankline_show_trailing_blankline_indent = false
		g.indent_blankline_show_first_indent_level = true
		g.indent_blankline_use_treesitter = true
		g.indent_blankline_show_current_context = true
	end,
}
