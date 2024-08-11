--           _       _           _   _       _
--     /\   | |     | |         | \ | |     (_)
--    /  \  | |_ __ | |__   __ _|  \| |_   ___ _ __ ___
--   / /\ \ | | '_ \| '_ \ / _` | . ` \ \ / / | '_ ` _ \
--  / ____ \| | |_) | | | | (_| | |\  |\ V /| | | | | | |
-- /_/    \_\_| .__/|_| |_|\__,_|_| \_| \_/ |_|_| |_| |_|
--            | |
--            |_|
-- Author: TarunDaCoder (https://github.com/TarunDaCoder)
-- GitHub: https://github.com/TarunDaCoder/AlphaNvim
-- License: MIT License Copyright (c) 2024 TarunDaCoder

-- Enable loader
vim.loader.enable()

-- Source core files
require('tarun.core')

-- Some secret stuff to reduce my startup time
local g = vim.g

g.loaded_gzip = 1
g.loaded_tar = 1
g.loaded_tarPlugin = 1
g.loaded_zip = 1
g.loaded_zipPlugin = 1
g.loaded_getscript = 1
g.loaded_getscriptPlugin = 1
g.loaded_vimball = 1
g.loaded_vimballPlugin = 1
g.loaded_matchit = 1
g.loaded_matchparen = 1
g.loaded_2html_plugin = 1
g.loaded_logiPat = 1
g.loaded_rrhelper = 1
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.loaded_netrwSettings = 1
g.loaded_ftplugin = 1
g.did_load_ftplugin = 1

g.loaded_python3_provider = 1
g.loaded_python_provider = 1
g.loaded_ruby_provider = 1
g.loaded_perl_provider = 1
