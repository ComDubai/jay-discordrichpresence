STEPS😴


a) Find qb-smallresources in your server files

b) Inside of qb-smallresources, delete discord.lua out of both the client and server folder 

c) Go in to qb-smallresources config.lua and remove Line 46 to 67
```
Config.Discord = {
    ["IsEnabled"] = false, -- If set to true, then discord rich presence will be enabled
    ["ApplicationId"] = '00000000000000000', -- The discord application id
    ["IconLarge"] = 'logo_name', -- The name of the large icon
    ["IconLargeHoverText"] = 'This is a Large icon with text', -- The hover text of the large icon
    ["IconSmall"] = 'small_logo_name', -- The name of the small icon
    ["IconSmallHoverText"] = 'This is a Small icon with text', -- The hover text of the small icon
    ["UpdateRate"] = 60000, -- How often the player count should be updated
    ["ShowPlayerCount"] = true, -- If set to true the player count will be displayed in the rich presence
    ["MaxPlayers"] = 48, -- Maximum amount of players
    ["Buttons"] = {
        {
            text = 'First Button!',
            url = 'fivem://connect/localhost:30120'
        },
        {
            text = 'Second Button!',
            url = 'fivem://connect/localhost:30120'
        }
    }
}
```
    NOTE : You don't NEED to remove this but it is reccomended. You could just leave it in the conifg but make sure ["IsEnabled"] = false 



2a) Go into the folder named server inside Jay-DRP. Go ahead and grab the discord.lua out of there and put it in your qb-smallresources server folder. This is a replacement for what you removed earlier

2b) Now go back and add the discord.lua from the 'client' folder in Jay-DRP and put it into your qb-smallresources client folder. This is a replacement also

2c) Now go into the client side of discord.lua and change all the details to your liking.

TO DO
-Make a config if I get enough requests to do so. I personally prefer just having a client and server side for this kind of thing but I don't mind making a config for it








Made By Jay (SlumCity#0001)
