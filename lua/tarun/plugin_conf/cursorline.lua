local curline = require('nvim-cursorline')

curline.setup({
    cursorline = {
        enable = true,
        number = true,
        timeout = 1000,
    },
    cursorword = {
        enable = true,
        hl = { underline = true },
    },
})
