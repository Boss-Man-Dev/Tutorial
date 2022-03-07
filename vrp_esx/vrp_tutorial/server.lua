local lang = vRP.lang
local Luang = module("vrp", "lib/Luang")
--[[
******************************************************************************************
						Dont change anything above this line
******************************************************************************************
--]]

--[[##########################--]]
local tutorial = class("tutorial", vRP.Extension)														
--[[##########################--]]
tutorial.event = {}
--[[##########################--]]
tutorial.tunnel = {}
--[[##########################--]]
function tutorial:__construct()
	vRP.Extension.__construct(self)
  
	self.cfg = module("vrp_tutorial", "cfg/cfg")			-- change vrp_tutorial to file name	& make sure path is correct if a cfg file is used													
	
	-- load lang
	self.luang = Luang()
	self.luang:loadLocale(vRP.cfg.lang, module("vrp_tutorial", "cfg/lang/"..vRP.cfg.lang))			-- change vrp_tutorial to file name & make sure file location is correct "cfg/lang/"			
	self.lang = self.luang.lang[vRP.cfg.lang]
	
end
--============= client side calls ==================
RegisterServerEvent('tutorial:test')
AddEventHandler('tutorial:test', function(source)
	vRP:triggerEvent("test", source)			-- this will call the function tutorial.event:test()
end)

--################################################
--              SERVER EVENTS                 
--################################################
tutorial.event = {}
--============= Player Spawn/Map =====================
function tutorial.event:playerSpawn(user, first_spawn)
	if first_spawn then
		for k,v in pairs(self.cfg.pos_1) do
			local name,gtype,x,y,z = table.unpack(v)
			
			local function enter(user)
				--enter marker
			end
			
			local function leave(user)
				--leave marker
			end
			
			local ment = clone(self.cfg.marker.type_1)
			ment[2].title = self.lang.main.title({gtype})
			ment[2].pos = {x,y,z-1}
			vRP.EXT.Map.remote._addEntity(user.source, ment[1], ment[2])

			user:setArea("vRP:test_1:"..k,x,y,z,1,1.5,enter,leave)
		end
		
		for k,v in pairs(self.cfg.pos_2) do
			local name,gtype,x,y,z = table.unpack(v)
			
			local function enter(user)
				--enter marker
			end
			
			local function leave(user)
				--leave marker
			end
			
			local ment = clone(self.cfg.marker.type_2)
			ment[2].title = self.lang.main.title({gtype})
			ment[2].pos = {x,y,z-1}
			vRP.EXT.Map.remote._addEntity(user.source, ment[1], ment[2])

			user:setArea("vRP:test_2:"..k,x,y,z,1,1.5,enter,leave)
		end
	end
end
--============= vrp Events ==================
function tutorial.event:test()
	--[[
			Code goes here
	--]]
	TriggerClientEvent('tutorial:test', source)		-- this will call function client side
end

vRP:registerExtension(tutorial)		-- Make sure the Name matches class name you chose
