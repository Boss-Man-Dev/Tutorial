Tunnel = module("vrp", "lib/Tunnel")
Proxy = module("vrp", "lib/Proxy")
local cvRP = module("vrp", "client/vRP")
vRP = cvRP()
--[[
******************************************************************************************
						Dont change anything above this line
******************************************************************************************
--]]

local cfg = module("vrp_tutorial", "cfg/cfg")
local tutorial = class("tutorial", vRP.Extension)

function tutorial:__construct()
	vRP.Extension.__construct(self)
	
	--this is generally where ui toggles is placed
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(0)
			
		end
	end)
end

function tutorial:test()
	--[[
			Code goes here
	--]]
	self.remote._startTest()	-- this will call the server side tunnel function called startTest
end

tutorial.tunnel = {}

--Function
tutorial.tunnel.test 			= tutorial.test

vRP:registerExtension(tutorial)