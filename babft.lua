local Abstract = loadstring(game:HttpGet("https://raw.githubusercontent.com/AbstractPoo/Main/AbstractUI/AbstractUI"))()
local UI = Abstract:Create("UI Library", UDim2.new(0, 420, 0, 450))

local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local human = char:WaitForChild("Humanoid")
local UIS = game:GetService("UserInputService")

UI:Divider("Divider")

UI:Button("Air Jump", "Jump many times in the air!", function()
    UIS.InputBegan:Connect(function(key, processed)
            if key.KeyCode == Enum.KeyCode.Space and processed == false then
                human:ChangeState(Enum.HumanoidStateType.Jumping)
            end
            wait()
        end)
end)

UI:Toggle("Air Jump", "Jump many times in the air", false, function(state)
    
end)

UI:Dropdown("Dropdown", "Description for dropdown", {"Option1", "Option2", "Option3"}, function(value)
    print(value)
end)

UI:Slider("Walkspeed", "Move faster!", 0, 350, 16, function(value)
    player.Character.Humanoid.WalkSpeed = value
end)

UI:Slider("Jump High", "Jump higher!", 0, 250, 52, function(value)
    player.Character.Humanoid.JumpPower = value
end)

-- This project isnt finished!
