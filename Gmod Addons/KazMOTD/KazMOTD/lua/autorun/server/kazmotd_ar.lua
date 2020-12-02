-- Send required files to clients
AddCSLuaFile("autorun/client/cl_kazmotd_ar.lua")
AddCSLuaFile("cl_kazmotd.lua")
AddCSLuaFile("skins/km_skin_default.lua")
resource.AddFile("materials/kazmotd/new.png")

-- Required Network Strings
util.AddNetworkString("kazmotd") -- Server updates Client
util.AddNetworkString("cl_kazmotd") -- Client updates Server
util.AddNetworkString("cc_kazmotd") -- ConCommand Security

-- Create text file directory if it doesn't exist
if (!file.IsDir("kazmotd", "DATA")) then
	file.CreateDir("kazmotd")
end

-- Create text files if they don't exist
if !file.Exists("kazmotd/tabs.txt", "DATA") then
	file.Write("kazmotd/tabs.txt", [[
enabled=true
name=Welcome
url=https://www.google.pt/
icon=icon16/emoticon_smile.png

enabled=true
name=Ranks
url=http://www.blackle.com/
icon=icon16/shield.png

enabled=true
name=Donate
url=https://www.google.pt/
icon=icon16/heart.png

enabled=false
name=Content
url=http://www.blackle.com/
icon=icon16/brick_add.png

enabled=false
name=tab5
url=https://www.google.pt/
icon=icon16/star.png

enabled=false
name=tab6
url=google.com
icon=icon16/star.png

enabled=false
name=tab7
url=https://www.google.pt/
icon=icon16/star.png

enabled=false
name=tab8
url=http://www.blackle.com/
icon=icon16/star.png]])
end



if !file.Exists("kazmotd/buttons.txt", "DATA") then
	file.Write("kazmotd/buttons.txt", [[
enabled=true
name=Join TTT
url=213.163.83.237:27025
icon=true

enabled=true
name=Join DR
url=213.163.83.237:27045
icon=true

enabled=true
name=Join GMR
url=213.163.83.237:27055
icon=true

enabled=false
name=????
url=213.163.83.237:27055
icon=false

enabled=false
name=?????
url=213.163.83.237:27055
icon=false

enabled=false
name=?????
url=213.163.83.237:27055
icon=false

enabled=false
name=?????
url=213.163.83.237:27055
icon=false

enabled=false
name=?????
url=213.163.83.237:27055
icon=false]])
end

-- Load kazMOTD serverside
include("kazmotd.lua")