local null = require('null-ls')
null.setup({
    sources = {
        -- Javascript
        null.builtins.formatting.prettier,
        require('none-ls.diagnostics.eslint'),

        -- Lua
        null.builtins.formatting.stylua,
        require('none-ls-luacheck.diagnostics.luacheck'),
    },
    auto_start = true,
})
