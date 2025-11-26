--// GUI Toggle Anti-Hit

-- Crear pantalla
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local ToggleButton = Instance.new("TextButton", ScreenGui)

ToggleButton.Size = UDim2.new(0, 150, 0, 50)
ToggleButton.Position = UDim2.new(0.05, 0, 0.2, 0)
ToggleButton.BackgroundColor3 = Color3.new(0, 0, 0)
ToggleButton.TextColor3 = Color3.new(1, 1, 1)
ToggleButton.Text = "Anti-Hit: OFF"
ToggleButton.Visible = true

local antiHitEnabled = false

function enableAntiHit()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()

    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanTouch = false
            part.CanCollide = false
            part.Massless = true
        end
    end
end

function disableAntiHit()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()

    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanTouch = true
            part.CanCollide = true
            part.Massless = false
        end
    end
end

ToggleButton.MouseButton1Click:Connect(function()
    antiHitEnabled = not antiHitEnabled

    if antiHitEnabled then
        ToggleButton.Text = "Anti-Hit: ON"
        enableAntiHit()
    else
        ToggleButton.Text = "Anti-Hit: OFF"
        disableAntiHit()
    end
end)
