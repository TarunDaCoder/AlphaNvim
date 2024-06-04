local null = require('null-ls')

null.setup({
    sources = {
        -- Web Dev
        null.builtins.formatting.prettier,
        require('none-ls.diagnostics.eslint'),

        -- Lua
        null.builtins.formatting.stylua,
        require('none-ls-luacheck.diagnostics.luacheck'),

        -- Spell
        null.builtins.completion.spell,
    },
})
