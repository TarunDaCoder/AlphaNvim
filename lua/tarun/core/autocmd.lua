local cmd = vim.api.nvim_create_autocmd
local grp = vim.api.nvim_create_augroup

grp('Shape', {})
grp('FileReload', {})
grp('Lsp', {})
grp('Buffer', {})

cmd({ 'VimLeave' }, {
    desc = 'Change cursor shape to line when leaving nvim',
    command = [[set guicursor=a:ver90-blinkwait800]],
    group = 'Shape',
})

-- NOTE: Remove this for now
-- cmd({ 'CursorHold', 'CursorHoldI', 'CursorMoved', 'CursorMovedI' }, {
-- 	desc = 'Open float when there is diagnostics',
-- 	group = 'Lsp',
-- 	callback = vim.diagnostic.open_float,
-- })

cmd({
    'FileChangedShellPost',
}, {
    desc = 'Actions when the file is changed outside of neovim',
    group = 'FileReload',
    callback = function()
        vim.notify('File changed, reloading buffer', vim.log.levels.ERROR)
    end,
})

cmd({ 'BufWinEnter', 'BufRead', 'BufNewFile' }, {
    command = [[setlocal formatoptions-=o]],
    group = 'Buffer',
})

cmd({ 'TextYankPost' }, {
    desc = 'Highlight while yanking',
    group = 'Buffer',
    callback = function()
        vim.highlight.on_yank({ higroup = 'Visual' })
    end,
})

cmd({ 'CursorHold' }, {
    desc = 'Open float when there is diagnostics',
    group = 'Lsp',
    callback = vim.diagnostic.open_float,
})

cmd({ 'BufWritePre' }, {
    pattern = '<buffer>',
    desc = 'Format on save',
    group = 'Lsp',
    command = [[lua vim.lsp.buf.format(nil, 2000)]],
})

cmd({ 'BufNewFile', 'BufRead' }, {
    pattern = '*.ejs',
    desc = 'Set .ejs files to html filetype',
    group = 'Buffer',
    command = [[set filetype=html]],
})

cmd('FileType', {
    pattern = {
        'checkhealth',
        'help',
        'lspinfo',
        'Spectre_panel',
    },
    callback = function()
        vim.keymap.set('n', 'q', vim.cmd.close, { desc = 'Close the current buffer', buffer = true })
    end,
})

cmd('FileType', {
    pattern = '*',
    command = [[ColorizerAttachToBuffer]],
})
