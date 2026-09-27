local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")

local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "AC_Test_Hub"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.fromOffset(320, 250)
frame.Position = UDim2.fromScale(0.5, 0.5)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(25,25,25)
frame.BorderSizePixel = 0
frame.Visible = false
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,45)
title.BackgroundTransparency = 1
title.Text = "KONTRA AC TESTER"
title.TextColor3 = Color3.new(1,1,1)
title.TextSize = 20
title.Parent = frame

local function button(text, y, callback)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(1,-20,0,38)
    b.Position = UDim2.fromOffset(10,y)
    b.BackgroundColor3 = Color3.fromRGB(45,45,45)
    b.TextColor3 = Color3.new(1,1,1)
    b.TextSize = 16
    b.Text = text
    b.Parent = frame

    b.MouseButton1Click:Connect(callback)
end

button("ESP TEST", 50, function()
    print("[AC TEST] ESP test requested")
end)

button("TRACER TEST", 95, function()
    print("[AC TEST] Tracer test requested")
end)

button("HEAD HITBOX TEST", 140, function()
    print("[AC TEST] Head hitbox test requested")
end)

button("STOP ALL TESTS", 185, function()
    print("[AC TEST] All tests stopped")
end)

UIS.InputBegan:Connect(function(input, processed)
    if processed then return end

    if input.KeyCode == Enum.KeyCode.LeftShift then
        frame.Visible = not frame.Visible
    end
end)

print("[AC TESTER] Loaded")
print("[AC TESTER] Press Left Shift to open")
