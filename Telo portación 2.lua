-- CONFIGURA TU POSICIÓN DE BASE
local basePosition = Vector3.new(0, 10, 0)  -- Cambia las coordenadas de tu base

local button = script.Parent
local player = game.Players.LocalPlayer
local enabled = false

button.MouseButton1Click:Connect(function()
    enabled = not enabled
    
    if enabled then
        button.Text = "TP ON"
        -- Teletransportar al jugador a la base
        local char = player.Character or player.CharacterAdded:Wait()
        char:MoveTo(basePosition)
    else
        button.Text = "TP OFF"
    end
end)
