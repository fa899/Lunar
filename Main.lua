-- // UI Library
getgenv().LunarLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/fa899/Lunar/main/UiLibrary.lua", not (false)))()
-- // MAIN FILE SYSTEMS
local old = writefile
function writefile(file, str)
	return old("Lunar/"..file, str)
end
local old = readfile
function readfile(file)
	return old("Lunar/"..file) or nil
end
local old = isfile
function isfile(file)
	return pcall(function() -- true or false (error-based)
		old("Lunar/"..file)
	end)
end

if not isfolder("Lunar") then
	makefolder("Lunar")
end

if not isfolder("Lunar/Configurations") then
	makefolder("Lunar/Configurations")
end

local supported = pcall(function()
	game:HttpGet("https://github.com/fa899/Lunar/blob/main/Games/"..game.PlaceId..".lua")
end)
-- // MAIN DOWNLOADERS
loadstring(game:HttpGet("https://raw.githubusercontent.com/fa899/Lunar/main/Libraries/Downloader.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/fa899/Lunar/main/Assets/Downloader.lua"))()
-- // GET GAME
local Game = "Universal"

if(supported)then
   Game = (game.PlaceId or game.Id)  
end

if isfile("Configurations/"..Game..".lua") then else
	writefile("Configurations/"..Game..".lua", "{}")
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/fa899/Lunar/main/Games/"..Game..".lua"))()
