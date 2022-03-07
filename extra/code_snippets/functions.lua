--client side function
local keys = {
	["E"] = 206, 
	["F"] = 23,
}

function dbl_press()
	if (IsControlJustReleased(0, keys["E"])) then
		local pressedAgain = false local timer = GetGameTimer()
		while true do
			Citizen.Wait(0)
			if (IsControlJustPressed(0, keys["E"])) then pressedAgain = true break end
			if (GetGameTimer() - timer >= 100) then break end
		end
		if (pressedAgain) then return true end
	end
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local ped = GetPlayerPed(-1)
		local last_veh = GetVehiclePedIsIn(ped, true)
		local veh_dist = GetDistanceBetweenCoords(GetEntityCoords(ped), GetEntityCoords(last_veh), 1)
		local lock_status = GetVehicleDoorLockStatus(last_veh)

		if IsControlJustReleased(0, keys["F"]) then
			Citizen.Wait(1000)														-- after exit animation
			if last_veh and GetLastPedInVehicleSeat(last_veh, -1) == ped then
				if lock_status <= 1 then											-- not locked
					--code goes here
				else						
					--code goes here
				end
			end
		end
	end
end)

-- server side functions