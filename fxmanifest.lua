fx_version 'cerulean'
game 'gta5'
lua54 'yes'
shared_script '@es_extended/imports.lua'

author 'Noname'
description 'Free car remover by N&D Scripts'

client_scripts {
	'@ox_lib/init.lua',
	'config/*.lua',
	'client/*.lua'
}

escrow_ignore {
    "config/*.lua"
}