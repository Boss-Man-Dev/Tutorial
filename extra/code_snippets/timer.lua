--[[##############################
		variables
##############################--]]
s_timer = 0
timer = 0

local keys = {["E"] = 206,}
--[[##############################
		Timer Function
##############################--]]
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		if robbing then
			if s_timer ~= 0 then
				s_timer = s_timer - 1
				
				local minutes = math.floor( s_timer  / 60 )
				local seconds = s_timer  % 60
				
				if seconds < 10 then
					timer = minutes..":0"..seconds
				else
					timer = minutes..":"..seconds
				end
			end
		end
	end
end)
--[[##############################
			Draw Timer
##############################--]]
function drawTxt(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    if(outline)then
	    SetTextOutline()
	end
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end
--[[##############################
	display timer Function
##############################--]]
function timer:init()
	Citizen.CreateThread(function()
		while true do
			if setTimer then
				d_lang = "Robbing: ~r~{1}~w~ seconds remaining"
				drawTxt(0.66, 1.44, 1.0,1.1,0.4, string.gsub(d_lang, "{1}", timer), 255, 255, 255, 255)
			else
				if(IsControlJustReleased(1, keys["E"]))then
					s_timer = 240
				end
			end
		end
	end)
end