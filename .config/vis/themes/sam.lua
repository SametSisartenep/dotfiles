-- $Id: acme.lua,v 1.1 2016/10/24 23:54:39 sam Exp $
--
-- Copyright (c) 2016 Rodrigo González López <rodrigosloop@gmail.com>
-- All rights reserved.
--

local lexers = vis.lexers

local colors = {
	['foreground']  = '#080808',
	['background'] = '#ffffff',
	['cursorline'] = '#e4e4e4',
	['selection'] = '#e0ffff',
	['cursorbg'] = '#87bfea',
	['cursorfg'] = '#fcfcfc',
	['linenumfg'] = '#c8c8c8',
	['linenumbg'] = '#000000',
}

lexers.colors = colors

local fg = ',fore:'..colors.foreground..','
local bg = ',back:'..colors.background..','

lexers.STYLE_DEFAULT = bg..fg
lexers.STYLE_NOTHING = bg
lexers.STYLE_CURSOR = 'fore:'..colors.cursorfg..',back:'..colors.cursorbg
lexers.STYLE_CURSOR_LINE = 'back:'..colors.cursorline
lexers.STYLE_COLOR_COLUMN = 'back:'..colors.cursorline
lexers.STYLE_SELECTION = 'back:'..colors.selection
lexers.STYLE_LINENUMBER = 'fore:'..colors.linenumfg..',back:'..colors.linenumbg
