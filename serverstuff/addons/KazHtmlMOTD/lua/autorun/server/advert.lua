local WhichAd = 1
local server = ""
local random = 1
hook.Add( "PlayerInitialSpawn", "AdvertInitSpawn", function( ply )
	timer.Simple(3, function()
		evolve:Notify( ply, Color( 255, 153, 0), "[LDT] ", Color(198,226,255), "Welcome to the LDT Community ", Color(255, 62, 62), gmod.GetGamemode().Name, Color(198,226,255), " Server." )
	end )
	timer.Simple(10, function()
		evolve:Notify( ply, Color( 255, 153, 0), "[LDT] ", Color(198,226,255), "You have ", Color( 98, 176, 255), tostring(ply:PS_GetPoints()), Color(198,226,255), " points to spend." )
		evolve:Notify( ply, Color( 255, 153, 0), "[LDT] ", Color(198,226,255), "Press ", Color( 98, 176, 255), "F4", Color(198,226,255), " to check out the Shop." )
	end )
end )

timer.Create( "AdvertiseTimer", 120, 0, function()
	if WhichAd == 1 then
		evolve:Notify( Color( 255, 153, 0), "[LDT] ", Color(198,226,255), "Register at our forums! ", Color(30,144,255), "www.LDT-clan.com")
	elseif WhichAd == 2 then
		evolve:Notify( Color( 255, 153, 0), "[LDT] ", Color(198,226,255), "Press ", Color( 98, 176, 255), "F4", Color(198,226,255), " to check out the Shop." )
	elseif WhichAd == 3 then
		evolve:Notify( Color( 255, 153, 0), "[LDT] ", Color(198,226,255), "Donate to help the Community and get epic stuff." )
	elseif WhichAd == 4 then
		evolve:Notify( Color( 255, 153, 0), "[LDT] ", Color(198,226,255), "Type ", Color( 98, 176, 255), "!rtv", Color(198,226,255), " to start a map vote." )
	elseif WhichAd == 5 then
		evolve:Notify( Color( 255, 153, 0), "[LDT] ", Color(198,226,255), "Respect the rules, be friendly, play regularly and you will become ", evolve.ranks[ "trusted" ].Color, "Trusted", Color(198,226,255), "."  )
	elseif WhichAd == 6 then
		evolve:Notify( Color( 255, 153, 0), "[LDT] ", Color(198,226,255), "Type ", Color( 98, 176, 255), "!menu", Color(198,226,255), " to see the Rules/Ranks/ect." )
	elseif WhichAd == 7 then
		random = math.random(6)
		if random == 1 then
			server = "build"
		elseif  random == 2 then 
			server = "zombierp"
		elseif random == 3 then
			server = "floodmod"
		elseif random == 4 then
			server = "ttt"
		elseif random == 5 then
			server = "deathrun"
		elseif random == 6 then
			server = "gmodracer"
		end
		evolve:Notify( Color( 255, 153, 0), "[LDT] ", Color(198,226,255), "Type ", Color( 98, 176, 255), "!join " ..server, Color(198,226,255), " to join " ..server.. "."  )
	end
	WhichAd = WhichAd + 1
	if WhichAd == 8 then
		WhichAd = 1
	end
end )