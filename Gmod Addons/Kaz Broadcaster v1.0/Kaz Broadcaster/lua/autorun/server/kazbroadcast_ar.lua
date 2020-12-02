// Send required files to clients
AddCSLuaFile("autorun/client/cl_kazbroadcast_ar.lua")
AddCSLuaFile("cl_kazbroadcast.lua")

// Required Network Strings
util.AddNetworkString("kazbroadcast") -- Server Notifies Clients
util.AddNetworkString("cc_kazbroadcast") -- ConCommand Security
util.AddNetworkString("kazbroadcast_ed") -- Server updates Admins
util.AddNetworkString("cl_kazbroadcast") -- Admin updates Server

// Create default text file if it doesn't exist
if !file.Exists("kaz_broadcasts.txt", "DATA") then
	file.Write("kaz_broadcasts.txt", ">New Broadcast<")
end
if !file.Exists("kaz_broadcasts_set.txt", "DATA") then
	file.Write("kaz_broadcasts_set.txt", "1\nbuttons/lightswitch2.wav")
end

// Load KazBroadcast serverside
include("kazbroadcast.lua")