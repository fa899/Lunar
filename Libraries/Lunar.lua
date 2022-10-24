local lunar = {}
lunar.LocalPlayer = {}
lunar.LocalPlayer.instance = game.Players.LocalPlayer
lunar.LocalPlayer.entity = {}
lunar.LocalPlayer.entity.instace = nil
lunar.LocalPlayer.mouse = lunar.LocalPlayer.instance:GetMouse()
lunar.LocalPlayer.entity.is_alive = false

spawn(function()
    game:GetService("RunService").Stepped:Connect(function(dt)
        local isalive = false
        lunar.LocalPlayer.entity.instace = lunar.LocalPlayer.instance.Character
        if lunar.LocalPlayer.entity.instace:FindFirstChildWhichIsA("Humanoid") then
           if lunar.LocalPlayer.entity.instace:FindFirstChildWhichIsA("Humanoid").Health >= 1 then
              isalive = true
           end
        else
           isalive = false
        end
        lunar.LocalPlayer.entity.is_alive = (isalive)
    end)
end)

return lunar
