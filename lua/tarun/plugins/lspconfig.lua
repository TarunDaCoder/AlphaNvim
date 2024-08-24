local lspconfig = require('lspconfig')

require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = { 'html', 'lua_ls', 'cssls', 'eslint', 'pyright', 'tsserver' },
})

local on_attach = function(client, bufnr)
	-- Mappings.
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	local bufopts = { noremap = true, silent = true, buffer = bufnr }

	local wk = require('which-key')

	wk.add({
		-- { '<leader>l', group = ' LSP', icon = ' ' },
		{ 'gD', vim.lsp.buf.declaration, desc = 'Go to declaration', icon = ' ' },
		-- { '<leader>la', vim.lsp.buf.code_action, desc = 'Code Action' },
		{ '<leader>lf', vim.diagnostic.open_float, desc = 'Show diagnostics' },
		{ 'K', vim.lsp.buf.hover, desc = 'Hover', icon = '󰉪 ' },
		{ 'gi', vim.lsp.buf.implementation, desc = 'Goto implementation', icon = ' ' },
		{ '<leader>ls', vim.lsp.buf.signature_help, desc = 'Signature help', icon = '󰋖 ' },
		{ '<space>D', vim.lsp.buf.type_definition, desc = 'Type definition', icon = ' ' },
		{ 'gd', vim.lsp.buf.goto_definition, desc = 'Go to definition', icon = ' ' },
		{ '<leader>fo', vim.lsp.buf.formatting, desc = 'Format' },
		{ 'gr', vim.lsp.buf.references, desc = 'References', bufopts },
		{
			'<space>ca',
			function()
				if vim.bo[bufnr].filetype == 'rust' then
					vim.cmd.RustLsp('codeAction')
				else
					vim.lsp.buf.code_action()
				end
			end,
			desc = 'Code Action',
		},
	})

	-- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
	-- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
	-- vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
	-- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
	-- vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
	-- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
	-- vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
	-- vim.keymap.set('n', '<space>ca', function()
	-- 	if vim.bo[bufnr].filetype == 'rust' then
	-- 		vim.cmd.RustLsp('codeAction')
	-- 	else
	-- 		vim.lsp.buf.code_action()
	-- 	end
	-- end, bufopts)
	-- vim.keymap.set('n', '<space>fo', vim.lsp.buf.format, bufopts)

	if client.server_capabilities.inlayHintProvider then
		vim.lsp.inlay_hint.enable(true, {
			bufnr = bufnr,
		})
	end

	client.id = 1
end

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
		on_attach = on_attach,
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
			{ '<leader>rn', vim.lsp.buf.rename, desc = 'Rename', icon = '󰑕 ' },
		})
	end,
})

require('selabel').setup({
	win_opts = {
		border = 'single',
	},
})
