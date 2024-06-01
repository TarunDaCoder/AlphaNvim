require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = { 'lua_ls', 'cssls', 'eslint', 'emmet_ls', 'html', 'quick_lint_js', 'pyright', 'tsserver' },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').lua_ls.setup({
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

require('lspconfig').pyright.setup({})
require('lspconfig').emmet_ls.setup({})
require('lspconfig').cssls.setup({})
require('lspconfig').eslint.setup({})
require('lspconfig').quick_lint_js.setup({})
require('lspconfig').html.setup({})
require('lspconfig').tsserver.setup({})

require('lspsaga').setup({})

require('trouble').setup({
	auto_close = true,
	use_diagnostic_signs = true,
})
