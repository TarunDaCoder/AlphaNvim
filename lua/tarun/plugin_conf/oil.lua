local oil = require("oil")
local map = vim.keymap.set

oil.setup({})
map("n", "-", ":Oil<CR>", { desc= "Open parent directory" })
