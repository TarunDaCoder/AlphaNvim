return {
	'nvim-treesitter/nvim-treesitter',
	version = '0.9.2^{}',
	config = function()
		require('nvim-treesitter.configs').setup({
			ensure_installed = { 'lua', 'html', 'css', 'javascript', 'rust', 'toml', 'yaml', 'bash' },
			sync_install = false,
			auto_install = true,
			highlight = { enable = true },
			matchup = { enable = true },
			indent = { enable = true },
			incremental_selection = { enable = true },
		})
	end,
}
