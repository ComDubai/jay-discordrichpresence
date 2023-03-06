--This grabs QB-Core stuff
local QBCore = exports['qb-core']:GetCoreObject()

--This loops every 8 seconds checking the players ID. If they haven't loaded through the multicharacter, it will never find the ID. 
CreateThread(function()
	while true do
		TriggerServerEvent('JayDRP:getUserIdRP')
		Wait(8000)
	end
end)
local user_id = nil

--This is basically your config but it is within the client folder meaning you can put this resource anywhere in your server files if it has a client and server. :D
RegisterNetEvent('JayDRP:giveRichPresence')
AddEventHandler('JayDRP:giveRichPresence', function(user_id)
	if user_id ~= nil then 
		SetDiscordAppId(1038811726231117894) --Add your own Discord Application ID. https://support-dev.discord.com/hc/en-us/articles/360028717192-Where-can-I-find-my-Application-Team-Server-ID-
		SetDiscordRichPresenceAsset('Server Name Here --- Change THIS << !!') --Server Name.
		SetRichPresence("[ID: "..user_id.."] | "..#GetActivePlayers().. "/64") --Change the max number of players in your city Eg. 64
    SetDiscordRichPresenceAssetSmall("Server LOGO Here --- Change THIS << !! NEEDS TO BE A PNG") --Picture that is shown the DRP
		SetDiscordRichPresenceAction(0, "Join Server", "Server Link Here --- Change THIS << !!")
  --SetDiscordRichPresenceAction(1, "Placeholder Button2 ", "Link")
	--SetDiscordRichPresenceAssetText("Slum City Roleplay") --This native sets the hover text of the image asset for the discord rich presence implementation.
  --SetDiscordRichPresenceAssetSmallText("")
	end
end)

