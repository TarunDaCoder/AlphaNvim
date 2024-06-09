local bl = require('bufferline')
bl.setup({
    options = {
        offsets = {
            {
                filetype = 'undotree',
                text = 'Undotree',
                align_text = 'center',
                separator = true,
            },
            {
                filetype = 'NvimTree',
                text = 'File Explorer',
                align_text = 'center',
                separator = true,
            },
        },
    }
})

-- BARBECUE ==========================
require('barbecue').setup({
    theme = 'onedark',
    show_modified = true,
})
