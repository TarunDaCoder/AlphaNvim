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

vim.keymap.set('i', '<c-e>', '<Plug>(CareClose)')
vim.keymap.set('i', '<cr>', '<Plug>(CareConfirm)')
vim.keymap.set('i', '<tab>', '<Plug>(CareSelectNext)')
vim.keymap.set('i', '<s-tab>', '<Plug>(CareSelectPrev)')

vim.keymap.set('i', '<c-f>', function()
    if require('care').api.doc_is_open() then
        require('care').api.scroll_docs(4)
    else
        vim.api.nvim_feedkeys(vim.keycode('<c-f>'), 'n', false)
    end
end)

vim.keymap.set('i', '<c-d>', function()
    if require('care').api.doc_is_open() then
        require('care').api.scroll_docs(-4)
    else
        vim.api.nvim_feedkeys(vim.keycode('<c-f>'), 'n', false)
    end
end)

vim.api.nvim_create_autocmd('InsertLeave', {
    callback = function()
        require('care').core.menu:close()
    end,
})

require('care').setup({
    ui = {
        menu = {
            format_entry = function(entry, data)
                return {

                    require('care.presets.components').Padding(1),
                    require('care.presets.components').Label(entry, data, true),
                    require('care.presets.components').Padding(1),
                    require('care.presets.components').KindIcon(entry, 'blended'),
                    require('care.presets.components').Padding(1),
                }
            end,
            border = { '▄', '▄', '▄', '█', '▀', '▀', '▀', '█' },
            scrollbar = {
                enabled = false,
            },
        },
        docs_view = {
            border = {
                { '▄', '@care.border' },
                { '▄', '@care.border' },
                { '▄', '@care.border' },
                { '█', '@care.border' },
                { '▀', '@care.border' },
                { '▀', '@care.border' },
                { '▀', '@care.border' },
                { '█', '@care.border' },
            },
        },
    },
})
