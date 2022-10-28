-- doesn't work right now, working on the library :)

gethui = (gethui or get_hui) or function() return Instance.new("Folder", game.CoreGui) end

API = {
	["createWindow"] = function()
		local LunarClient = Instance.new("ScreenGui")
		local MainOptions = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")

		LunarClient.Name = "LunarClient"
		LunarClient.Parent = (gethui() or gethui)

		MainOptions.Name = "MainOptions"
		MainOptions.Parent = LunarClient
		MainOptions.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
		MainOptions.BackgroundTransparency = 0.500
		MainOptions.Position = UDim2.new(0.324663699, 0, 0.343589753, 0)
		MainOptions.Size = UDim2.new(0, 391, 0, 244)

		UICorner.Parent = MainOptions
	end
}
