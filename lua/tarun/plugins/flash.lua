local flash = require('flash')
local wk = require('which-key')

flash.setup({})
wk.add({
    {
        's',
        function()
            flash.jump()
        end,
        desc = 'Flash',
    },
})
