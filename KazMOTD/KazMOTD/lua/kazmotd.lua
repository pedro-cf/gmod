if !file.Exists("kazmotd/tabs.txt", "DATA") or !file.Exists("kazmotd/buttons.txt", "DATA") then
	return
end

local tabs_file = string.Explode("\n\n", string.Trim(file.Read("kazmotd/tabs.txt", "DATA")))
local Tabs = {}
for i, tab in pairs(tabs_file) do
	local Tab = {}
	for j, line in pairs(string.Explode("\n", tab)) do
		Tab[j] = string.Explode("=", line)[2]
	end
	Tabs[i] = Tab
end

local buttons_file = string.Explode("\n\n", file.Read( "kazmotd/buttons.txt", "DATA"))
local Btns = {}
for i, button in pairs(buttons_file) do
	local Btn = {}
	for j, line in pairs(string.Explode("\n", button)) do
		Btn[j] = string.Explode("=", line)[2]
	end
	Btns[i] = Btn
end

local function updateClient(ply)
	net.Start("kazmotd")
			net.WriteTable(Tabs)
			net.WriteTable(Btns)
	net.Send(ply)
end

net.Receive("cl_kazmotd", function(len, ply)
	if (!ply:IsAdmin()) then return end
	Tabs = net.ReadTable()
	Btns = net.ReadTable()

	if Tabs != nil then
		file.Write("kazmotd/tabs.txt", "")
		for i, tab in pairs(Tabs) do
			for j, line in pairs(tab) do
				if (j == 1) then file.Append("kazmotd/tabs.txt", "enabled="..line.."\n")
				elseif (j == 2) then file.Append("kazmotd/tabs.txt", "name="..line.."\n")
				elseif (j == 3) then file.Append("kazmotd/tabs.txt", "url="..line.."\n")
				elseif (j == 4) then file.Append("kazmotd/tabs.txt", "icon="..line.."\n")
				end
			end
			file.Append("kazmotd/tabs.txt", "\n")
		end
		for k, v in pairs(player.GetAll()) do
			updateClient(v)
		end
	end
	
	if Btns != nil then
		file.Write("kazmotd/buttons.txt", "")
		for i, btn in pairs(Btns) do
			for j, line in pairs(btn) do
				if (j == 1) then file.Append("kazmotd/buttons.txt", "enabled="..line.."\n")
				elseif (j == 2) then file.Append("kazmotd/buttons.txt", "name="..line.."\n")
				elseif (j == 3) then file.Append("kazmotd/buttons.txt", "url="..line.."\n")
				elseif (j == 4) then file.Append("kazmotd/buttons.txt", "icon="..line.."\n")
				end
			end
			file.Append("kazmotd/buttons.txt", "\n")
		end
		for k, v in pairs(player.GetAll()) do
			updateClient(v)
		end
	end
	
end)

hook.Add("PlayerInitialSpawn", "kazmotd_initspawn", function(ply) 
	updateClient(ply)
	ply:ConCommand("open_motd")
end)

concommand.Add("motdeditor", function(ply,cmd,args,str)
    if !ply:IsAdmin() then return end
	net.Start("cc_kazmotd")
	net.Send(ply)
end)

hook.Add( "PlayerSay", "kazmotd_txt_cmd", function(ply, text, public)
	if string.lower(text) == "!motd" then 
		ply:ConCommand("open_motd")
	elseif ply:IsAdmin() and string.lower(text) == "!motdeditor" then
		net.Start("cc_kazmotd")
		net.Send(ply)
		return ""
	end
end)