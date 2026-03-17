fx_version 'cerulean'
game 'gta5'

lua54 'yes'

author 'SX Scripts' -- Sharkbxy on Disc
description 'Passive Drug Selling System'
version '1.2.0'

shared_scripts {
    '@ox_lib/init.lua',
    --'@lation_ui/init.lua', If you use lation Ui uncomment. DO NOT comment out ox_lib in replacement leave both.
    'config.lua'
}

client_scripts {
    'client/zones.lua',
    'client/police.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/stash.lua',
    'server/selling.lua',
    'server/police.lua'
}

dependencies {
    'ox_inventory',
    'ox_lib',
    'qb-core'
}