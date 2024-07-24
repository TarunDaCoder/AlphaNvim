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
vim.keymap.set('i', '<tab>', '<Plug>(CareSelectNext)')
vim.keymap.set('i', '<s-tab>', '<Plug>(CareSelectPrev)')

vim.api.nvim_create_autocmd('InsertLeave', {
	callback = function()
		require('care').core.menu:close()
	end,
})

local luasnip = require('luasnip')

vim.keymap.set('i', '<c-f>', function()
	if require('care').api.doc_is_open() then
		require('care').api.scroll_docs(4)
	elseif luasnip.choice_active() then
		require('luasnip').change_choice(1)
	else
		vim.api.nvim_feedkeys(vim.keycode('<c-f>'), 'n', false)
	end
end)

vim.keymap.set('i', '<c-d>', function()
	if require('care').api.doc_is_open() then
		require('care').api.scroll_docs(-4)
	elseif luasnip.choice_active() then
		require('luasnip').change_choice(-1)
	else
		vim.api.nvim_feedkeys(vim.keycode('<c-f>'), 'n', false)
	end
end)
require('lspkind').init({
	symbols_map = {
		Class = '  ',
		Color = '  ',
		Constant = '  ',
		Constructor = '  ',
		Enum = ' 了',
		EnumMember = '  ',
		Event = '  ',
		Field = ' 󰜢 ',
		File = '  ',
		Folder = '  ',
		Function = '  ',
		Interface = '  ',
		Keyword = ' 󰌆 ',
		Method = ' ƒ ',
		Module = '  ',
		Operator = ' 󰆕 ',
		Property = '  ',
		Reference = ' 󰈇 ',
		Snippet = '  ',
		Struct = '  ',
		Text = '  ',
		TypeParameter = '',
		Unit = ' 󰑭 ',
		Value = ' 󰎠 ',
		Variable = '  ',
	},
})
