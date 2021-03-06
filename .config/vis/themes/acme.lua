-- $Id: acme.lua,v 1.1 2016/10/24 23:54:39 sam Exp $
--
-- Copyright (c) 2016 Rodrigo González López <rodrigosloop@gmail.com>
-- All rights reserved.
--

local lexers = vis.lexers

local colors = {
	['foreground']  = '#080808',
	['background'] = '#ffffea',
	['cursorline'] = '#e4e4e4',
	['selection'] = '#e0ffff',
	['cursorbackground'] = '#87bfea',
	['cursorforeground'] = '#fcfcfc',
}

lexers.colors = colors

local fg = ',fore:'..colors.foreground..','
local bg = ',back:'..colors.background..','

lexers.STYLE_DEFAULT = bg..fg
lexers.STYLE_NOTHING = bg
lexers.STYLE_CURSOR = 'fore:'..colors.cursorforeground..',back:'..colors.cursorbackground
lexers.STYLE_CURSOR_LINE = 'back:'..colors.cursorline
lexers.STYLE_COLOR_COLUMN = 'back:'..colors.cursorline
lexers.STYLE_SELECTION = 'back:'..colors.selection
