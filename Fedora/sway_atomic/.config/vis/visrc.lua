require('vis')

local lightyellow = '#efbf71'
local lightgray = '#9a9c8b'
local darkgray = '#1e1f1e'

-- global config
vis.events.subscribe(vis.events.INIT, function()
	vis:command("set theme caelus")
end)
-- per-window config
vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command("set tabwidth 2")
	vis:command("set numbers true")
	vis:map(vis.modes.NORMAL, " fm", function()
		vis:command("open .")
		vis:feedkeys("<C-w>k")
		vis:command("wq!")
	end, "")
end)

								-- plugins --

-- modal
require('plugins/modal')
-- vis-autoclose
local autoclose = require('plugins/vis-autoclose')
-- colorizer
local colorizer = require('plugins/vis-colorizer')
colorizer.three = false
colorizer.six   = true
-- complete-filename
local completefilename = require('plugins/complete-filename')
-- vis-lspc
local lsp = require('plugins/vis-lspc')
