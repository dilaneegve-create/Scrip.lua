-- LocalScript

local player = game.Players.LocalPlayer
local base = workspace:WaitForChild("Base") -- Tu base en el mapa
local humanoidRootPart = nil

-- Esperar que el personaje cargue
player.CharacterAdded:Connect(function(char)
	humanoidRootPart = char:WaitForChild("HumanoidRootPart")
end)

-- Si el personaje ya estaba cargado
if player.Character then
	humanoidRootPart = player.Character:WaitForChild("HumanoidRootPart")
end

-- Función para teletransportar
local function TeleportToBase()
	if humanoidRootPart then
		humanoidRootPart.CFrame = base.CFrame + Vector3.new(0, 3, 0)
	else
		warn("No se encontró la HumanoidRootPart")
	end
end

-- Llamar la función cuando quieras:
TeleportToBase()
