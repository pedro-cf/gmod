AddCSLuaFile( "autorun/client/cl_htmlMOTD.lua" )

resource.AddFile( "materials/gui/newsticker.vmt" )
resource.AddFile( "materials/gui/smallnewsticker.vmt" )

local MotdTabs = file.Read( "htmlmotd/tabs.txt" )
local MotdInfoTable = {}
local Tabs = string.Explode("*", MotdTabs)

for i, tab in ipairs( Tabs ) do
	local Lines = string.Explode("\n", tab)
	for j, line in ipairs( Lines ) do
		local LinePart = string.Explode("=", line)
		MotdInfoTable[ LinePart[1] ] = LinePart[2]
	end
end

local MotdButtons = file.Read("htmlmotd/buttons.txt" )
MotdButtonsTable = {}
local Buttons = string.Explode("*", MotdButtons)

for k, button in ipairs( Buttons ) do
	local Lines = string.Explode("\n", button)
	for v, line in ipairs(Lines) do
		local LinePart = string.Explode("=", line)
		MotdButtonsTable[ LinePart[1] ] = LinePart[2]
	end
end

hook.Add( "PlayerInitialSpawn", "OpenHTMLMOTDspawn", function( ply )
	timer.Simple(1, function()
		for k,v in pairs(MotdInfoTable) do
			umsg.Start( "MotdInfo", ply )
				umsg.String( k )
				umsg.String( v )
			umsg.End()
		end
		
		for n,m in pairs(MotdButtonsTable) do
			umsg.Start( "MotdButtons", ply )
				umsg.String( n )
				umsg.String( m )
			umsg.End()
		end
	
	end )
	timer.Simple( 2, function()
		ply:SendLua( "LocalPlayer():ConCommand( \"showhtmlmotd\" )" )
	end )

end )

hook.Add("PlayerSay", "OpenHTMLMOTDchat", function( ply, text ) 

    if  (string.lower(text) == "!menu") or (string.lower(text) == "!help") or (string.lower(text) == "!motd") or (string.lower(text) == "!rules") then
	for k,v in pairs(MotdInfoTable) do
		umsg.Start( "MotdInfo", ply )
			umsg.String( k )
			umsg.String( v )
		umsg.End()
	end
	
	for n,m in pairs(MotdButtonsTable) do
		umsg.Start( "MotdButtons", ply )
			umsg.String( n )
			umsg.String( m )
		umsg.End()
	end
        ply:SendLua( "LocalPlayer():ConCommand( \"showhtmlmotd\" )" )
     end

end )