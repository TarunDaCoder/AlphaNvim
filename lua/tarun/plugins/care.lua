-- local cmp = require('cmp')
-- local luasnip = require('luasnip')
--
-- local check_backspace = function()
-- 	local col = vim.fn.col('.') - 1
-- 	return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s')
-- end
--
-- cmp.setup({
-- 	snippet = {
-- 		expand = function(args)
-- 			luasnip.lsp_expand(args.body) -- For `luasnip` users.
-- 		end,
-- 	},
-- 	window = {
-- 		completion = {
-- 			border = 'rounded',
-- 		},
-- 		documentation = {
-- 			border = 'rounded',
-- 		},
-- 	},
-- 	mapping = cmp.mapping.preset.insert({
-- 		['<C-b>'] = cmp.mapping.scroll_docs(-4),
-- 		['<C-f>'] = cmp.mapping.scroll_docs(4),
-- 		['<C-Space>'] = cmp.mapping.complete({}),
-- 		['<C-e>'] = cmp.mapping.abort(),
-- 		['<CR>'] = cmp.mapping.confirm({ select = true }),
-- 		['<Tab>'] = cmp.mapping(function(fallback)
-- 			if cmp.visible() then
-- 				cmp.select_next_item()
-- 			elseif luasnip.expandable() then
-- 				luasnip.expand()
-- 			elseif luasnip.expand_or_jumpable() then
-- 				luasnip.expand_or_jump()
-- 			elseif check_backspace() then
-- 				fallback()
-- 			else
-- 				fallback()
-- 			end
-- 		end, {
-- 			'i',
-- 			's',
-- 		}),
-- 		['<S-Tab>'] = cmp.mapping(function(fallback)
-- 			if cmp.visible() then
-- 				cmp.select_prev_item()
-- 			elseif luasnip.jumpable(-1) then
-- 				luasnip.jump(-1)
-- 			else
-- 				fallback()
-- 			end
-- 		end, {
-- 			'i',
-- 			's',
-- 		}),
-- 	}),
-- 	sources = cmp.config.sources({
-- 		{ name = 'nvim_lsp' },
-- 		{ name = 'luasnip' }, -- For luasnip users.
-- 	}, {
-- 		{ name = 'neorg' },
-- 		{ name = 'supermaven' },
-- 	}),
-- })
--
-- -- Set up friendly snippets with luasnip
-- require('luasnip.loaders.from_vscode').lazy_load()
--
-- cmp.setup.cmdline({ '/', '?' }, {
-- 	mapping = cmp.mapping.preset.cmdline(),
-- 	sources = {
-- 		{ name = 'buffer' },
-- 	},
-- })
--
-- cmp.setup.cmdline(':', {
-- 	mapping = cmp.mapping.preset.cmdline(),
-- 	sources = cmp.config.sources({
-- 		{ name = 'path' },
-- 	}, {
-- 		{ name = 'cmdline' },
-- 	}),
-- 	matching = { disallow_symbol_nonprefix_matching = false },
-- })
--
-- local lspkind = require('lspkind')
-- cmp.setup({
-- 	formatting = {
-- 		format = lspkind.cmp_format({
-- 			mode = 'symbol',
-- 			maxwidth = 50,
-- 			symbol_map = {
-- 				SuperMaven = ' ',
-- 			},
-- 		}),
-- 	},
-- })

-- Care config ================================================
return {
	'max397574/care.nvim',
	enabled = true,
	event = 'InsertEnter',
	config = function()
		vim.keymap.set('i', '<c-n>', function()
			vim.snippet.jump(1)
		end)
		vim.keymap.set('i', '<c-p>', function()
			vim.snippet.jump(-1)
		end)
		vim.keymap.set('i', '<c-space>', function()
			require('care').api.complete()
		end)

		vim.keymap.set('i', '<cr>', '<Plug>(CareConfirm)')
		vim.keymap.set('i', '<c-e>', '<Plug>(CareClose)')
		vim.keymap.set('i', '<Tab>', '<Plug>(CareSelectNext)')
		vim.keymap.set('i', '<S-Tab>', '<Plug>(CareSelectPrev)')

		vim.api.nvim_create_autocmd('InsertLeave', {
			callback = function()
				require('care').core.menu:close()
			end,
		})
	end,
}
