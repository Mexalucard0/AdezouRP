resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

version '1.0.0'
author 'github.com/AvaN0x'
description 'ESX AvaN0x -- random shit'

client_scripts {
    'client/main.lua',
    'client/discord.lua',  -- discord activity
    'client/announce.lua',
    'client/crouch.lua',
    'client/pointing.lua'
}

server_scripts {
    "@mysql-async/lib/MySQL.lua",
    'server/main.lua',
    'server/rpchat.lua',  -- chat commands
    'server/announce.lua'
}