local isfile = (isfile or is_file or file_exists or fileexists)
local isfolder = (isfolder or is_folder or folder_exists or folderexists)
local makefolder = (makefolder or make_folder or createfolder or create_folder)
local writefile = (writefile or write_file or createfile or create_file)
local request = (request or http_request or http and http.request or syn and syn.request or fluxus and fluxus.request or function(tab)
	if (tab.Url or tab.URL or tab.url) then
		return {
			["Body"] = game:HttpGet((tab.Url or tab.URL or tab.url)) or "404: Website does not exist",
			["Success"] = game:HttpGet((tab.Url or tab.URL or tab.url)) ~= nil and true or false,
			["StatusMessage"] = game:HttpGet((tab.Url or tab.URL or tab.url)) == nil and "Err 404: Website does not exist"
		}
	end
end)

if not isfolder("Lunar") then
	makefolder("Lunar") -- You know what they say, "Deal with it"
end

if not isfolder("Lunar/assets") then
	makefolder("Lunar/assets") -- You know what they say, "Deal with it"
end

local old = isfile
local old1 = writefile
function isfile(path)
	local isfile = old
	if isfile("lunar/"..path) then
		return true
	elseif not isfile("lunar/"..path) then
		return false
	end
end
function writefile(path, src)
	local writefile = old1
	if not isfile("lunar/"..path) then
		writefile("lunar/"..path, src)
	end
end

if not isfile("assets/gradientlogo.png") then
	writefile("assets/gradientlogo.png", request({Url="https://raw.githubusercontent.com/fa899/Lunar/main/Assets/ColoredLogo.png", Method = "GET"}).Body)
end

if not isfile("assets/normallogo.png") then
	writefile("assets/normallogo.png", request({Url="https://github.com/fa899/Lunar/blob/main/Assets/WhiteLogo.png?raw=true", Method = "GET"}).Body)
end

if not isfile("assets/cape.png") then
	writefile("assets/cape.png", request({Url="https://github.com/fa899/Lunar/blob/main/Assets/LunarCape.png?raw=true", Method = "GET"}).Body)
end

if not isfile("assets/cape.png") then
	writefile("assets/cape.png", request({Url="https://github.com/fa899/Lunar/blob/main/Assets/LunarCape.png?raw=true", Method = "GET"}).Body)
end

if not isfile("assets/cancel.png") then
	writefile("assets/cancel.png", request({Url="https://github.com/fa899/Lunar/blob/main/Assets/Close.png?raw=true", Method = "GET"}).Body)
end

if not isfile("assets/check.png") then
	writefile("assets/check.png", request({Url="https://github.com/fa899/Lunar/blob/main/Assets/Check.png?raw=true", Method = "GET"}).Body)
end
