require('image').setup({
    backend = 'kitty',
    integrations = {
        markdown = {
            only_render_image_at_cursor = true,
        },
        neorg = {
            only_render_image_at_cursor = true,
        },
    },
    tmux_show_only_in_active_window = true,
})

require('diagram').setup({})
