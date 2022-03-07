--Main Information
resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"	--https://docs.fivem.net/docs/scripting-reference/resource-manifest/resource-manifest/
fx_version 'cerulean'
game 'gta5'								--games { 'rdr3', 'gta5', 'gta4' }  -  { 'RedM', 'FiveM', 'LibertyM' }

--Extra Information
author 'John Doe <j.doe@example.com>'	-- not required
description 'vRP tutorial'				-- not required
version '1.0.0'							-- not required

--UI information
ui_page 'file_location'					-- cfg/html/index.html
-- this also supports absolute URLs
-- ui_page 'https://ui-frontend.cfx.example.com/b20210501/index.html'

dependencies {
	'vrp'						   		-- Add comma if other dependencies
	--[[
    '/server:4500',                		-- requires at least server build 4500
    '/policy:subdir_file_mapping', 		-- requires the server key to have 'subdir_file_mapping' granted
    '/onesync',                    		-- requires state awareness to be enabled
    '/gameBuild:h4',               		-- requires at least game build 2189
    '/native:0xE27C97A0',          		-- requires native 0xE27C97A0 to be supported
	--]]
}

server_script { 
	"@vrp/lib/utils.lua",
	"vrp_server.lua",
}

client_script {
	"@vrp/lib/utils.lua",
	'client.lua',
}

-- file information
	-- all files other go here
files {
	"cfg/cfg.lua"
	-- HTML
	-- css
	-- JS
	--images
}


