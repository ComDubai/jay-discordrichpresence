local QBCore = exports['qb-core']:GetCoreObject()

--Main Server Event that grabs the players citizen ID when they load in
RegisterServerEvent('JayDRP:getUserIdRP')
AddEventHandler('JayDRP:getUserIdRP', function()
    local src = source
    local xPlayer = QBCore and QBCore.Functions.GetPlayer(src)
    if not xPlayer then
    --Uncomment if you want to debug the Wait time. 
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
