local dap = require("dap")
local map = vim.keymap.set
map("n", "<leader>dt", dap.toggle_breakpoint, {})
map('n', '<F5>', function() require('dap').continue() end)
map('n', '<F10>', function() require('dap').step_over() end)
map('n', '<F11>', function() require('dap').step_into() end)
map('n', '<F12>', function() require('dap').step_out() end)
map('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
map('n', '<Leader>B', function() require('dap').set_breakpoint() end)
map('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
map('n', '<Leader>dr', function() require('dap').repl.open() end)
map('n', '<Leader>dl', function() require('dap').run_last() end)
map({'n', 'v'}, '<Leader>dh', function()
    require('dap.ui.widgets').hover()
end)
map({'n', 'v'}, '<Leader>dp', function()
    require('dap.ui.widgets').preview()
end)
map('n', '<Leader>df', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.frames)
end)
map('n', '<Leader>ds', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.scopes)
end)
