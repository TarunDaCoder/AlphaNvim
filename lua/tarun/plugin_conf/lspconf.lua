local lspconfig = require('lspconfig')

require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = { 'lua_ls', 'cssls', 'eslint', 'pyright', },
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

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

require("null-ls").setup({
    sources = sources,
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_buf_create_user_command(bufnr, "LspFormatting", function()
                -- or vim.lsp.buf.formatting(bufnr) on 0.8
                vim.lsp.buf.formatting_sync()
            end, {})

            -- you can leave this out if your on_attach is unique to null-ls,
            -- but if you share it with multiple servers, you'll want to keep it
            vim.api.nvim_clear_autocmds({
                group = augroup,
                buffer = bufnr,
            })

            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                command = "undojoin | LspFormatting",
            })
        end
    end,
})
