require("blink.cmp").setup({
    completion = { accept = { auto_brackets = { enabled = true } } },
    signature = { enabled = true },

    keymap = {
        ['<TAB>'] = {"select_next", "fallback"},
        ['<S-TAB>'] = {"select_prev", "fallback"},
        ['<CR>'] = {"accept", "fallback"},
    },
})
