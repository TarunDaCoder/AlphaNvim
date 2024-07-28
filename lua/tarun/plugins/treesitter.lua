return {
	'nvim-treesitter/nvim-treesitter',
	config = function()
		require('nvim-treesitter.configs').setup({
			sync_install = true,
			auto_install = true,
			highlight = { enable = true },
			matchup = { enable = true },
			indent = { enable = true },
			incremental_selection = { enable = true },
		})
	end,
}
