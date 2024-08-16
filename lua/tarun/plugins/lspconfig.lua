local lspconfig = require('lspconfig')

require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = { 'html', 'lua_ls', 'cssls', 'eslint', 'pyright', 'tsserver' },
})

-- local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.lua_ls.setup({
	-- capabilties = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim', '_G' },
			},
			runtime = {
				version = 'LuaJIT',
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

-- lspconfig.harper_ls.setup({
-- 	settings = {
-- 		['harper-ls'] = {
-- 			codeActions = {
-- 				forceStable = true,
-- 			},
-- 		},
-- 	},
-- })

local lang_servers = {
	'cssls',
	'eslint',
	'pyright',
	'tsserver',
	'emmet_language_server',
	'html',
	'clangd',
	'taplo',
	'marksman',
}

for _, server in ipairs(lang_servers) do
	lspconfig[server].setup({
		-- capabilities = capabilities,
	})
end

local signs = { Error = '󰅚 ', Warn = '󰀪 ', Hint = '', Info = ' ' }

vim.diagnostic.config({
	virtual_text = {
		prefix = function(diagnostic, i, total)
			local icon, highlight
			if diagnostic.severity == 1 then
				icon = signs.Error
				highlight = 'DiagnosticError'
			elseif diagnostic.severity == 2 then
				icon = signs.Warn
				highlight = 'DiagnosticWarn'
			elseif diagnostic.severity == 3 then
				icon = signs.Info
				highlight = 'DiagnosticInfo'
			elseif diagnostic.severity == 4 then
				icon = signs.Hint
				highlight = 'DiagnosticHint'
			end
			return i .. '/' .. total .. ' ' .. icon .. '  ', highlight
		end,
	},
	underline = true,
	update_in_insert = false,
	severity_sort = false,
	float = {
		focusable = false,
		style = 'minimal',
		border = 'rounded',
		source = 'always',
		header = '',
		prefix = function(diagnostic, i, total)
			local icon, highlight
			if diagnostic.severity == 1 then
				icon = signs.Error
				highlight = 'DiagnosticError'
			elseif diagnostic.severity == 2 then
				icon = signs.Warn
				highlight = 'DiagnosticWarn'
			elseif diagnostic.severity == 3 then
				icon = signs.Info
				highlight = 'DiagnosticInfo'
			elseif diagnostic.severity == 4 then
				icon = signs.Hint
				highlight = 'DiagnosticHint'
			end
			return i .. '/' .. total .. ' ' .. icon .. '  ', highlight
		end,
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = signs.Error,
			[vim.diagnostic.severity.WARN] = signs.Warn,
			[vim.diagnostic.severity.INFO] = signs.Info,
			[vim.diagnostic.severity.HINT] = signs.Hint,
		},
	},
})

require('trouble').setup({
	auto_close = true,
	use_diagnostic_signs = true,
})

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, {
	border = 'rounded',
	title = 'Signature Help',
	focusable = true,
})

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
	border = 'rounded',
	focusable = true,
	title = 'Hover',
})

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		local bufnr = args.buf
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if not client then
			return
		end

		if client.server_capabilities.completionProvider then
			vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'
		end

		require('which-key').add({
			{ '<leader>lr', vim.lsp.buf.rename, desc = 'Rename', icon = '󰑕 ' },
		})
	end,
})

require('selabel').setup({
	win_opts = {
		border = 'single',
	},
})
