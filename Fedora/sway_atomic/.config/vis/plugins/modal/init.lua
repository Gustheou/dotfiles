--[[ modal - the status line colorizer for vis ]]

require('vis')

MODAL_STYLE = 51
MODAL_STYLE_INVERTED = 52

VMODES = {
	[vis.modes.NORMAL] = ' NORMAL ',
	[vis.modes.INSERT] = ' INSERT ',
	[vis.modes.VISUAL] = ' VISUAL ',
	[vis.modes.REPLACE] = ' REPLACE ',
	[vis.modes.VISUAL_LINE] = ' VISUAL_LINE ',
	[vis.modes.OPERATOR_PENDING] = ' OPERATOR_PENDING ',
}

vis.events.subscribe(vis.events.WIN_STATUS, function(win)
	local filename = ' [NO NAME] '
  if win.file.name then filename = ' '..win.file.name..' ' end
	local vmode = VMODES[vis.mode]
	win:status(vmode..filename)

	if vis.mode == vis.modes.INSERT then
		win:style_define(MODAL_STYLE, vis.lexers.STYLE_STATUS_FOCUSED..'fore:black,back:green')
		win:style_define(MODAL_STYLE_INVERTED, 'fore:green,back:black')
	elseif vis.mode == vis.modes.VISUAL or vis.mode == vis.modes.VISUAL_LINE then
		win:style_define(MODAL_STYLE, vis.lexers.STYLE_STATUS_FOCUSED..'fore:black,back:magenta')
		win:style_define(MODAL_STYLE_INVERTED, 'fore:magenta,back:black')
	elseif vis.mode == vis.modes.OPERATOR_PENDING or vis.mode == vis.modes.REPLACE then
		win:style_define(MODAL_STYLE, vis.lexers.STYLE_STATUS_FOCUSED..'fore:black,back:blue')
		win:style_define(MODAL_STYLE_INVERTED, 'fore:blue,back:black')
	elseif vis.mode == vis.modes.NORMAL then
    win:style_define(MODAL_STYLE, vis.lexers.STYLE_STATUS_FOCUSED..',back:yellow')
    win:style_define(MODAL_STYLE_INVERTED, vis.lexers.STYLE_STATUS_FOCUSED..',back:black,fore:yellow')
	end

	for i=0,string.len(vmode) do
		win:style_pos(MODAL_STYLE, i, win.height - 1)
	end
	for i=string.len(vmode),string.len(vmode)+string.len(filename) do
		win:style_pos(MODAL_STYLE_INVERTED, i, win.height - 1)
	end
	for i=string.len(vmode)+string.len(filename),win.width do
		win:style_pos(MODAL_STYLE, i, win.height - 1)
	end
end)
