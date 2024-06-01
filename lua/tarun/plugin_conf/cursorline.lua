local curline = require('nvim-cursorline')

curline.setup({
    cursorline = {
        enable = false,
        number = true,
        timeout = 1000,
    },
    cursorword = {
        enable = true,
        hl = { underline = true },
    },
})
