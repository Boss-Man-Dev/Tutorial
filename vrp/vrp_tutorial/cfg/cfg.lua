local cfg = {}

cfg.marker = {
	-- marker https://docs.fivem.net/docs/game-references/blips/
	--color={r,g,b,a}
	type_1 = {
		"PoI",{ blip_id = 431, blip_color = 25, marker_id = 1, scale = {1.0,1.0,1.0}, color={255, 0, 0, 255}}
	},
	type_2 = {
		"PoI",{ blip_id = 108, blip_color = 2, marker_id = 1, scale = {1.0,1.0,1.0}, color={0, 0, 255, 255}}
	}
}

cfg.pos_1 = {
  --{Name, Gtype, Cords}
	{"Vinewood", 		"type_1", 89.577018737793,2.16031360626221,68.322021484375},         
	{"Little Seoul", 	"type_1", -526.497131347656,-1222.79455566406,18.4549674987793}       
}

cfg.pos_2 = {
  --{Name, Gtype, Cords}
	{"Meteor", 				"type_2", 314.18591308594,-278.43823242188,54.170776367188},  		
	{"Blaine County", 		"type_2", -112.32825469971,6468.9008789063,31.626708984375}
}


return cfg