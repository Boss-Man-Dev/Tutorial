
--[[
******************************************************************************************
						Dont change anything above this line
******************************************************************************************
--]]

--#########  event calls from server ##############
RegisterNetEvent('tutorial:test')
AddEventHandler('tutorial:test', function()
	--[[
			Code goes here
	--]]
	TriggerServerEvent('tutorial:test')			-- triggers server event
end)

