require('conform').setup({
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
	formatters_by_ft = {
		lua = { 'stylua' },
		javascript = { 'prettierd' },
		html = { 'prettierd' },
	},
})
