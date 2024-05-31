local alpha = require("alpha")

local dashboard = require('alpha.themes.dashboard')
dashboard.section.header.val = {
	[[                                                                       ]],
	[[                                                                     ]],
	[[       ████ ██████           █████      ██                     ]],
	[[      ███████████             █████                             ]],
	[[      █████████ ███████████████████ ███   ███████████   ]],
	[[     █████████  ███    █████████████ █████ ██████████████   ]],
	[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
	[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
	[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
	[[                                                                       ]],
}

dashboard.section.buttons.val = {
	dashboard.button('f', '' .. ' Find file', ':Telescope find_files <CR>'),
	dashboard.button('e', '' .. ' New file', ':ene <BAR> startinsert <CR>'),
	dashboard.button('p', '' .. ' Find project', ':Telescope project project <CR>'),
	dashboard.button('r', '' .. ' Recent files', ':Telescope oldfiles <CR>'),
	dashboard.button('t', '' .. ' Find text', ':Telescope live_grep <CR>'),
	dashboard.button('s', '' .. ' Find Session', ':Telescope sessions_picker <CR>'),
	dashboard.button('c', '' .. ' Config', ':e ~/.config/nvim/init.lua <CR>'),
	dashboard.button('q', '' .. ' Quit', ':qa<CR>'),
}

local function footer()
	-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return 'github.com/TarunDaCoder'
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = 'Type'
dashboard.section.header.opts.hl = 'Include'
dashboard.section.buttons.opts.hl = 'Keyword'

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
