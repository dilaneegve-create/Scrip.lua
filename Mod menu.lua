--// MENU COMPLETO LEGAL PARA ROBLOX STUDIO

local ScreenGui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
local Frame = Instance.new("Frame", ScreenGui)
local UICorner = Instance.new("UICorner", Frame)

Frame.Size = UDim2.new(0, 300, 0, 400)
Frame.Position = UDim2.new(0.05, 0, 0.2, 0)
Frame.BackgroundColor3 = Color3.fromRGB(30,30,30)

UICorner.CornerRadius = UDim.new(0,12)

-- Titulo
local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1,0,0,50)
Title.BackgroundTransparency = 1
Title.Text = "Mi Menú"
Title.TextColor3 = Color3.new(1,1,1)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 24

-- Botón ejemplo 1
local Button1 = Instance.new("TextButton", Frame)
Button1.Size = UDim2.new(1,-40,0,40)
Button1.Position = UDim2.new(0,20,0,70)
Button1.Text = "Teletransportarme"
Button1.BackgroundColor3 = Color3.fromRGB(50,50,50)
Button1.TextColor3 = Color3.new(1,1,1)

-- Acción del botón (TP legal a una parte del mapa)
Button1.MouseButton1Click:Connect(function()
    local plr = game.Players.LocalPlayer
    local char = plr.Character or plr.CharacterAdded:Wait()
    local root = char:WaitForChild("HumanoidRootPart")

    local destino = workspace:WaitForChild("MiZonaDeTP")  -- pon aquí un part
    root.CFrame = destino.CFrame + Vector3.new(0,3,0)
end)

-- Botón ejemplo 2 (activar animación)
local Button2 = Instance.new("TextButton", Frame)
Button2.Size = UDim2.new(1,-40,0,40)
Button2.Position = UDim2.new(0,20,0,130)
Button2.Text = "Reproducir animación"
Button2.BackgroundColor3 = Color3.fromRGB(50,50,50)
Button2.TextColor3 = Color3.new(1,1,1)

Button2.MouseButton1Click:Connect(function()
    local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        local anim = Instance.new("Animation")
        anim.AnimationId = "rbxassetid://507771019" -- ID de animación
        humanoid:LoadAnimation(anim):Play()
    end
end)

-- Botón Toggle ejemplo
local Toggle = false
local ToggleBtn = Instance.new("TextButton", Frame)
ToggleBtn.Size = UDim2.new(1,-40,0,40)
ToggleBtn.Position = UDim2.new(0,20,0,190)
ToggleBtn.Text = "Modo: OFF"
ToggleBtn.BackgroundColor3 = Color3.fromRGB(70,20,20)
ToggleBtn.TextColor3 = Color3.new(1,1,1)

ToggleBtn.MouseButton1Click:Connect(function()
    Toggle = not Toggle
    ToggleBtn.Text = Toggle and "Modo: ON" or "Modo: OFF"
end)
