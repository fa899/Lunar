--[[

 [ doesn't work right now, working on the library :) ]

--]]

gethui = (gethui or get_hui) or function() return Instance.new("Folder", game.CoreGui) end
local Game = "Universal"

API = {}

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
	return pcall(function() -- true or false (error-only)
		old("Lunar/"..file)
	end)
end

if isfolder("Lunar/Configurations") then else
	makefolder("Lunar/Configurations")
end

local supported = pcall(function()
	game:HttpGet("https://github.com/fa899/Lunar/blob/main/Games/"..game.PlaceId..".lua")
end)

if isfile("Configurations/"..Game..".lua") then else
	writefile("Configurations/"..Game..".lua", "{}")
end

API["createWindow"] = function()
	local SectionsAPI = {}
	local LUNAR_CLIENT = Instance.new("ScreenGui")
	local MainOptions = Instance.new("Frame", LUNAR_CLIENT)
	local UICorner = Instance.new("UICorner")
	local MAINTABS = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local MODS = Instance.new("TextButton")
	local UIStroke = Instance.new("UIStroke")
	local UICorner_3 = Instance.new("UICorner")
	local SETTINGS = Instance.new("TextButton")
	local UIStroke_2 = Instance.new("UIStroke")
	local UICorner_4 = Instance.new("UICorner")
	local WAYPOINTS = Instance.new("TextButton")
	local UIStroke_3 = Instance.new("UIStroke")
	local UICorner_5 = Instance.new("UICorner")
	local UIStroke_4 = Instance.new("UIStroke")
	local MAIN = Instance.new("Frame")
	
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	
	MainOptions.Name = "MainOptions"
	LUNAR_CLIENT.Parent = (game.CoreGui)
	MainOptions.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	MainOptions.BackgroundTransparency = 0.500
	MainOptions.Position = UDim2.new(0.320179373, 0, 0.337179482, 0)
	MainOptions.Size = UDim2.new(0, 520, 0, 254)

	UICorner.Parent = MainOptions

	MAINTABS.Name = "MAIN-TABS"
	MAINTABS.Parent = MainOptions
	MAINTABS.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
	MAINTABS.BackgroundTransparency = 0.500
	MAINTABS.Size = UDim2.new(0, 520, 0, 34)

	UICorner_2.Parent = MAINTABS

	MODS.Name = "MODS"
	MODS.Parent = MAINTABS
	MODS.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	MODS.BackgroundTransparency = 0.500
	MODS.BorderSizePixel = 0
	MODS.Position = UDim2.new(0.152380496, 0, 0.0882352963, 0)
	MODS.Size = UDim2.new(0, 108, 0, 26)
	MODS.Font = Enum.Font.Gotham
	MODS.LineHeight = 0.930
	MODS.Text = "MODS"
	MODS.TextColor3 = Color3.fromRGB(255, 255, 255)
	MODS.TextSize = 17.000
	MODS.TextWrapped = true

	UIStroke.Parent = MODS
	UIStroke.Transparency = 0.500
	UIStroke.Thickness = 0.900
	UIStroke.Color = Color3.fromRGB(158, 158, 158)

	UICorner_3.Parent = MODS

	SETTINGS.Name = "SETTINGS"
	SETTINGS.Parent = MAINTABS
	SETTINGS.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	SETTINGS.BackgroundTransparency = 0.500
	SETTINGS.BorderSizePixel = 0
	SETTINGS.Position = UDim2.new(0.392915457, 0, 0.14705883, 0)
	SETTINGS.Size = UDim2.new(0, 116, 0, 23)
	SETTINGS.Font = Enum.Font.Gotham
	SETTINGS.LineHeight = 0.930
	SETTINGS.Text = "SETTINGS"
	SETTINGS.TextColor3 = Color3.fromRGB(255, 255, 255)
	SETTINGS.TextSize = 17.000
	SETTINGS.TextWrapped = true

	UIStroke_2.Parent = SETTINGS
	UIStroke_2.Transparency = 0.500
	UIStroke_2.Thickness = 0.900
	UIStroke_2.Color = Color3.fromRGB(158, 158, 158)

	UICorner_4.Parent = SETTINGS

	WAYPOINTS.Name = "WAYPOINTS"
	WAYPOINTS.Parent = MAINTABS
	WAYPOINTS.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	WAYPOINTS.BackgroundTransparency = 0.500
	WAYPOINTS.BorderSizePixel = 0
	WAYPOINTS.Position = UDim2.new(0.641864836, 0, 0.117647067, 0)
	WAYPOINTS.Size = UDim2.new(0, 110, 0, 23)
	WAYPOINTS.Font = Enum.Font.Gotham
	WAYPOINTS.LineHeight = 0.930
	WAYPOINTS.Text = "WAYPOINTS"
	WAYPOINTS.TextColor3 = Color3.fromRGB(255, 255, 255)
	WAYPOINTS.TextSize = 17.000
	WAYPOINTS.TextWrapped = true

	UIStroke_3.Parent = WAYPOINTS
	UIStroke_3.Transparency = 0.500
	UIStroke_3.Thickness = 0.900
	UIStroke_3.Color = Color3.fromRGB(158, 158, 158)

	UICorner_5.Parent = WAYPOINTS

	UIStroke_4.Parent = MainOptions
	UIStroke_4.Transparency = 0.750
	UIStroke_4.Thickness = 3.600
	UIStroke_4.Color = Color3.fromRGB(17, 17, 17)

	MAIN.Name = "MAIN"
	MAIN.Parent = MainOptions
	MAIN.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	MAIN.BackgroundTransparency = 0.800
	MAIN.Position = UDim2.new(0.0153846154, 0, 0.173228353, 0)
	MAIN.Size = UDim2.new(0, 504, 0, 204)
	
	local MODSSECTION, SETTINGSSECTION, WAYPOINTSSECTION
	
	task.spawn(function()
		MODSSECTION = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")

		MODSSECTION.Name = "MODS-SECTION"
		MODSSECTION.Parent = MAIN
		MODSSECTION.Active = true
		MODSSECTION.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MODSSECTION.BackgroundTransparency = 1.000
		MODSSECTION.Size = UDim2.new(0, 504, 0, 204)

		UIListLayout.Parent = MODSSECTION
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 5)
	end)
	
	task.spawn(function()
		SETTINGSSECTION = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")

		SETTINGSSECTION.Name = "SETTINGS-SECTION"
		SETTINGSSECTION.Parent = MAIN
		SETTINGSSECTION.Active = true
		SETTINGSSECTION.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SETTINGSSECTION.BackgroundTransparency = 1.000
		SETTINGSSECTION.BorderSizePixel = 0
		SETTINGSSECTION.Size = UDim2.new(0, 504, 0, 204)
		SETTINGSSECTION.ScrollBarThickness = 5

		UIListLayout.Parent = SETTINGSSECTION
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 5)
	end)
	
	task.spawn(function()
		WAYPOINTSSECTION = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")

		WAYPOINTSSECTION.Name = "WAYPOINTS-SECTION"
		WAYPOINTSSECTION.Parent = MAIN
		WAYPOINTSSECTION.Active = true
		WAYPOINTSSECTION.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		WAYPOINTSSECTION.BackgroundTransparency = 1.000
		WAYPOINTSSECTION.BorderSizePixel = 0
		WAYPOINTSSECTION.Size = UDim2.new(0, 504, 0, 204)
		WAYPOINTSSECTION.ScrollBarThickness = 5

		UIListLayout.Parent = WAYPOINTSSECTION
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 5)
	end)
	
	MODSSECTION.Visible = false
	UIStroke.Color = Color3.fromRGB(189, 189, 189)
	SETTINGSSECTION.Visible = false
	UIStroke_2.Color = Color3.fromRGB(189, 189, 189)
	WAYPOINTSSECTION.Visible = false
	UIStroke_3.Color = Color3.fromRGB(189, 189, 189)
	
	local switchTab = function(tab)
		MODSSECTION.Visible = false
		UIStroke.Color = Color3.fromRGB(189, 189, 189)
		SETTINGSSECTION.Visible = false
		UIStroke_2.Color = Color3.fromRGB(189, 189, 189)
		WAYPOINTSSECTION.Visible = false
		UIStroke_3.Color = Color3.fromRGB(189, 189, 189)
		MAIN[tab:upper()]["Visible"] = true
		if tab == "MODS-SECTION" then
			UIStroke.Color = Color3.fromRGB(255, 255, 255)
		elseif tab == "SETTINGS-SECTION" then
			UIStroke_2.Color = Color3.fromRGB(255, 255, 255)
		elseif tab == "WAYPOINTS-SECTION" then
			UIStroke_3.Color = Color3.fromRGB(255, 255, 255)
		end
	end
	
	MODS.MouseButton1Click:Connect(function()
		switchTab("MODS-SECTION")
	end)
	
	SETTINGS.MouseButton1Click:Connect(function()
		switchTab("SETTINGS-SECTION")
	end)
	
	WAYPOINTS.MouseButton1Click:Connect(function()
		switchTab("WAYPOINTS-SECTION")
	end)

	SectionsAPI["Section"] = function(tab, title)
		local SectionAPI = {}
		local TAB = MAIN[tab:upper()]
		
		local Section = Instance.new("Frame")
		local UIListLayout = Instance.new("UIListLayout")

		local Section = Instance.new("Frame")
		local TextLabel = Instance.new("TextLabel")
		local Frame = Instance.new("Frame")
		local UIListLayout = Instance.new("UIListLayout")

		Section.Name = "Section"
		Section.Parent = TAB
		Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Section.BackgroundTransparency = 0.800
		Section.Size = UDim2.new(0, 498, 0, 59)

		TextLabel.Parent = Section
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.Position = UDim2.new(0.369477898, 0, 0, 0)
		TextLabel.Size = UDim2.new(0, 166, 0, 15)
		TextLabel.ZIndex = 2
		TextLabel.Font = Enum.Font.Gotham
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextSize = 14.000
		TextLabel.BackgroundTransparency = 1
		TextLabel.Text = title

		Frame.Parent = Section
		Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame.Position = UDim2.new(0, 0, 0.258714586, 0)
		Frame.Size = UDim2.new(0, 498, 0, 43)
		Frame.Transparency = 1

		UIListLayout.Parent = Frame
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 5)
		
		Section.Size = UDim2.new(0, 498, 0, UIListLayout.AbsoluteContentSize.Y)
		
		Section.ChildAdded:Connect(function(c)
			if c.ClassName:lower():find("text") or c.ClassName:lower():find("frame") then
				Section.Size = UDim2.new(0, 498, 0, UIListLayout.AbsoluteContentSize.Y)
			end
		end)

		SectionAPI["Toggle"] = function(data)
			local ToggleAPI = {}
			local title = data['Title'] or data['title']
			local hovertext = data['HoverText'] or data['hoverText'] or data['Hovertext'] or data['hovertext']
			local callback = data['Function'] or data['function']
			local state = false

			callback(state)
			state = state

			ToggleAPI["ForceToggle"] = function(bool)
				callback(bool)
				state = bool
			end
		end

		return SectionAPI
	end

	return SectionsAPI
end

--[[
local WINDOW = API['createWindow']()

local SECTION = WINDOW['Section']('MODS-SECTION', 'yes')

local TOG = SECTION["Toggle"]({
	["Title"] = "Professional",
	["hovertext"] = "Slayerson",
	["function"] = function(callback) print(callback) end
})
--]]

return API
