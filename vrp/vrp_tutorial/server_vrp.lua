local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

local vRP = Proxy.getInterface("vRP")

--[[
******************************************************************************************
						Dont change anything above this line
******************************************************************************************
--]]

async(function()
  vRP.loadScript("vrp_tutorial", "server")		-- change vrp_tutorial to file name of mod
end)