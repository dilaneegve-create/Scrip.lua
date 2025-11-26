
local Players = game:GetService("Players")

-- Coordenadas de TU BASE (cámbialas)
local BASE_POSITION = Vector3.new(0, 10, 0)

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(char)
        task.wait(1) -- esperar a que cargue el mono 💀
        local root = char:WaitForChild("HumanoidRootPart")

        -- TP brainrot 😭🔥
        root.CFrame = CFrame.new(BASE_POSITION)
    end)
end)
end) llamda teleport
