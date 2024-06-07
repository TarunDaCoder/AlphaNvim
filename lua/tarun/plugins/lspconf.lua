local lspconfig = require('lspconfig')

require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = { 'lua_ls', 'cssls', 'eslint', 'pyright', },
})
require("mason-null-ls").setup()

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


function on_attach(client, bufnr)
    local bufopts = { nnoremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
end

lspconfig.pyright.setup({})
lspconfig.emmet_language_server.setup({})
lspconfig.cssls.setup({})
lspconfig.eslint.setup({})

local signs = { Error = '󰅚 ', Warn = '󰀪 ', Hint = '󰌶 ', Info = ' ' }
for type, icon in pairs(signs) do
    local hl = 'DiagnosticSign' .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
    virtual_text = {
        prefix = ' ',
    },
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = false,
})
