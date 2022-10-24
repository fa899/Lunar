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

if not isfolder("Lunar/libraries") then
	makefolder("Lunar/libraries") -- You know what they say, "Deal with it"
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

if not isfile("libraries/lunar.lua") then
   writefile("libraries/lunar.lua", request({Url = "https://raw.githubusercontent.com/fa899/Lunar/main/Libraries/Lunar.lua", Method = "GET"}))
end
