local PLUGIN = {}
PLUGIN.Title = "Join"
PLUGIN.Description = "Join a LDT Server."
PLUGIN.Author = "Kazaki"
PLUGIN.ChatCommand = "join"
PLUGIN.Usage = "<build/deathrun/floodmod/gmodracer/ttt/zombierp>"

function PLUGIN:Call( ply, args )
	if !args[1] then
		evolve:Notify( ply, evolve.colors.red, "You need to specify the server you wish to join." )
		ply:ConCommand( "play buttons/combine_button_locked.wav" )
		return
	end
	if string.lower(args[1]) == "zombierp" then
		evolve:Notify( evolve.colors.blue, ply:Nick(), evolve.colors.white, " has joined the ", evolve.colors.red, "ZombieRP ", evolve.colors.white, "server." )
		ply:ConCommand( "play common/bugreporter_succeeded.wav" )
		timer.Simple(1, function()
			ply:SendLua( "LocalPlayer():ConCommand(\"connect 91.220.53.86:27045\")" )
		end)
	elseif string.lower(args[1]) == "build" then
		evolve:Notify( evolve.colors.blue, ply:Nick(), evolve.colors.white, " has joined the ", evolve.colors.red, "Build ", evolve.colors.white, "server." )
		ply:ConCommand( "play common/bugreporter_succeeded.wav" )
		timer.Simple(1, function()
			ply:SendLua( "LocalPlayer():ConCommand(\"connect 83.250.27.103:27015\")" )
		end)
	elseif string.lower(args[1]) == "floodmod" then
		evolve:Notify( evolve.colors.blue, ply:Nick(), evolve.colors.white, " has joined the ", evolve.colors.red, "Floodmod ", evolve.colors.white, "server." )
		ply:ConCommand( "play common/bugreporter_succeeded.wav" )
		timer.Simple(1, function()
			ply:SendLua( "LocalPlayer():ConCommand(\"connect 91.220.53.86:27025\")" )
		end)
	elseif string.lower(args[1]) == "ttt" then
		evolve:Notify( evolve.colors.blue, ply:Nick(), evolve.colors.white, " has joined the ", evolve.colors.red, "Trouble in Terrorist Town ", evolve.colors.white, "server." )
		ply:ConCommand( "play common/bugreporter_succeeded.wav" )
		timer.Simple(1, function()
			ply:SendLua( "LocalPlayer():ConCommand(\"connect 91.220.53.86:27015\")" )
		end)
	elseif string.lower(args[1]) == "deathrun" then
		evolve:Notify( evolve.colors.blue, ply:Nick(), evolve.colors.white, " has joined the ", evolve.colors.red, "Deathrun ", evolve.colors.white, "server." )
		ply:SendLua( "surface.PlaySound( Sound( \"common/bugreporter_succeeded.wav\" ) )" )
		timer.Simple(1, function()
			ply:SendLua( "LocalPlayer():ConCommand(\"connect 89.238.160.166:27015\")" )
		end)
	elseif string.lower(args[1]) == "gmodracer" then
		/*
		evolve:Notify( evolve.colors.blue, ply:Nick(), evolve.colors.white, " has joined the ", evolve.colors.red, "Gmod Racer ", evolve.colors.white, "server." )
		ply:SendLua( "surface.PlaySound( Sound( \"common/bugreporter_succeeded.wav\" ) )" )
		timer.Simple(1, function()
			ply:SendLua( "LocalPlayer():ConCommand(\"connect 91.220.53.86:27035\")" )
		end)
		*/
		ply:ConCommand( "play buttons/combine_button_locked.wav" )
		evolve:Notify( ply, evolve.colors.red, "Sorry, It's not up yet." )
	else
		evolve:Notify( ply, evolve.colors.red, "You need to specify the server you wish to join." )
		ply:ConCommand( "play buttons/combine_button_locked.wav" )
		return
	end
end

evolve:RegisterPlugin( PLUGIN )