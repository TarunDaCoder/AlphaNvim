local lspconfig = require('lspconfig')

require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = { 'lua_ls', 'cssls', 'eslint', 'emmet_ls', 'html', 'quick_lint_js', 'pyright', 'tsserver' },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.lua_ls.setup({
	capabilties = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' },
			},
		},
		workspace = {
			library = {
				[vim.fn.expand('$VIMRUNTIME/lua')] = true,
				[vim.fn.stdpath('config') .. '/lua'] = true,
			},
		},
	},
})

vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})

lspconfig.pyright.setup({})
lspconfig.emmet_ls.setup({})
lspconfig.cssls.setup({})
lspconfig.eslint.setup({})
lspconfig.quick_lint_js.setup({})
lspconfig.html.setup({})
lspconfig.tsserver.setup({})

local signs = { Error = '󰅚 ', Warn = '󰀪 ', Hint = '󰌶 ', Info = ' ' }
for type, icon in pairs(signs) do
	local hl = 'DiagnosticSign' .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = false,
})
