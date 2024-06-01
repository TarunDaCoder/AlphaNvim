local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

require('telescope').setup({
    extensions = {
        ['ui-select'] = {
            require('telescope.themes').get_dropdown({}),
        },
    },
})

require('telescope').load_extension('ui-select')

local open_with_trouble = require('trouble.sources.telescope').open

local telescope = require('telescope')

telescope.setup({
    defaults = {
        mappings = {
            i = { ['<c-t>'] = open_with_trouble },
            n = { ['<c-t>'] = open_with_trouble },
        },
    },
})

-- require('telescope').load_extension('file_browser')
-- require("telescope").extensions.live_grep_raw.live_grep_raw()
-- require('telescope').load_extension('zoxide')
-- require('telescope').load_extension('sessions_picker')
-- require('telescope').load_extension('project')

require('telescope').setup({
    defaults = {
        prompt_prefix = '   ',
        selection_caret = ' ',
        entry_prefix = '  ',
        initial_mode = 'insert',
        selection_strategy = 'reset',
        sorting_strategy = 'ascending',
        layout_strategy = 'horizontal',
        layout_config = {
            horizontal = {
                prompt_position = 'top',
                preview_width = 0.55,
                results_width = 0.9,
            },
            vertical = {
                mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
        },
        -- winblend = 30,
        border = {},
        borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },

        color_devicons = true,
    },
    extensions = {
        sessions_picker = {
            sessions_dir = vim.fn.stdpath('data') .. '/sessions/',
        },
    },
})
