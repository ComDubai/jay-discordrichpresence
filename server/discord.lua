
local QBCore = exports['qb-core']:GetCoreObject()

--[[This is for ID
local QBCore = exports['qb-core']:GetCoreObject()
RegisterServerEvent('JayDRP:getUserIdRP')
AddEventHandler('JayDRP:getUserIdRP', function()
    local src = source
    local xPlayer = QBCore and QBCore.Functions.GetPlayer(src)
    if not xPlayer then
        print("Error: Failed to retrieve player data.")
        return
    end
    local user_id = xPlayer.PlayerData.id
    if not user_id then
        print("Error: Failed to retrieve player ID.")
        return
    end
    TriggerClientEvent('JayDRP:giveRichPresence', src, user_id)
end)]]



RegisterServerEvent('JayDRP:getUserIdRP')
AddEventHandler('JayDRP:getUserIdRP', function()
    local src = source
    local xPlayer = QBCore and QBCore.Functions.GetPlayer(src)
    if not xPlayer then
        --print("Error: Failed to retrieve player data.")
        return
    end
    local citizen_id = xPlayer.PlayerData.citizenid
    if not citizen_id then
        print("Error: Failed to retrieve player Citizen ID.")
        return
    end
    TriggerClientEvent('JayDRP:giveRichPresence', src, citizen_id)
end)
