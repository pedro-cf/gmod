-- Load kazMOTD clientside
include("cl_kazmotd.lua")
include("skins/km_skin_default.lua")


--Font
surface.CreateFont("ldtfont",  {
 font = "coolvetica",
 size = 0.03*ScrW(),
 weight = 500,
 blursize = 0,
 scanlines = 0,
 antialias = true,
 underline = false,
 italic = false,
 strikeout = false,
 symbol = false,
 rotary = false,
 shadow = false,
 additive = false,
 outline = false
} )

surface.CreateFont("closefont",  {
 font = "coolvetica",
 size = 0.015*ScrW(),
 weight = 500,
 blursize = 0,
 scanlines = 0,
 antialias = true,
 underline = false,
 italic = false,
 strikeout = false,
 symbol = false,
 rotary = false,
 shadow = false,
 additive = false,
 outline = false
} )