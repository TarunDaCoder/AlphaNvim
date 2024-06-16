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

-- Enable lazy loader
vim.loader.enable()

-- Require main modules
require('tarun.core.rocks')
require('tarun.core.autocmd')
require('tarun.core.colourscheme')
require('tarun.core.remaps')
require('tarun.plugins')
