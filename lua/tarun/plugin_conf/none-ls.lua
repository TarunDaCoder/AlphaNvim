local null = require('null-ls')
null.setup({
    sources = {
        -- Javascript
        null.builtins.formatting.prettier,
        -- null.builtins.diagnostics.eslint,
        require('none-ls.diagnostics.eslint'),

        -- Lua
        null.builtins.formatting.stylua,
        -- null.builtins.diagnostics.luacheck,
        -- require("none-ls.diagnostics.luacheck"),
        require('none-ls-luacheck.diagnostics.luacheck'),
    },
    auto_start = true,
})
