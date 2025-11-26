--[[
    Archivo: TeleportScript.lua
    Descripción: Este script maneja la lógica para teletransportar a un jugador 
                 a un juego de destino específico usando TeleportService.
    Propósito: Social/Navegación entre servidores de forma segura y legítima.
]]

-- 1. Obtener Servicios clave
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")

-- 2. Configuración (¡IMPORTANTE! Reemplaza este ID por el ID real de tu otro juego de Roblox)
local ID_DEL_JUEGO_DE_DESTINO = 0000000000 

-- 3. Referencia al objeto que activa el teletransporte (ejemplo: un botón/parte)
-- **Asegúrate de cambiar "TuBoton" por el nombre real de tu parte/botón en el juego**
local BotonDeTeletransporte = script.Parent 

-- Función que se ejecuta cuando el jugador interactúa con el botón
local function onPlayerActivated(player)
    -- Verificar si el ID de destino es válido antes de teletransportar
    if ID_DEL_JUEGO_DE_DESTINO == 0000000000 then
        warn("ERROR: El ID_DEL_JUEGO_DE_DESTINO no ha sido configurado.")
        return
    end

    -- Intentar teletransportar al jugador
    local success, errorMessage = pcall(function()
        TeleportService:Teleport(ID_DEL_JUEGO_DE_DESTINO, player)
    end)
    
    if not success then
        warn("Error al intentar teletransportar a " .. player.Name .. ": " .. errorMessage)
    end
end

-- Conectar la función al evento de clic del objeto (asumiendo que tiene un ClickDetector)
local clickDetector = BotonDeTeletransporte:FindFirstChildOfClass("ClickDetector")

if clickDetector then
    clickDetector.MouseClick:Connect(onPlayerActivated)
    print("Script de Teletransporte activado. ¡Listo para enviar jugadores!")
else
    warn("ADVERTENCIA: No se encontró ClickDetector. El script necesita un ClickDetector o un evento similar.")
end
