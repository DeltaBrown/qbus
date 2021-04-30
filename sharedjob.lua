QBShared.Gangs = {
	["none"] = {
		label = "No gang",
		grades = {
			['0'] = {
				name = "Unemployed",
			},
			
		},
		["boss"] = {
			[1]  = {x = -1087.58, y = -1671.87, z = 4.7, h = 109.65},
		},
		
		maxLevel = 6,
			["allowedvehicles"] = {
			["xa21"] = "XA21",
			["asea"] = "Asea",
		},
	},

	----------------------------------YAKUZA GANG
	["yakuza"] = { 
		label = "Yakuza gang",
		grades = {
			['0'] = {
				name = "Recluta",
			},
			['1'] = {
				name = "Patron",
			},
			['2'] = {
				name = "Soldado",
			},
			['3'] = {
				name = "Boss",
				isboss = true,
			},
		},
		["boss"] = {
			[1]  = {x = -1875.77, y = 2061.18, z = 145.57, h = 108.84},
		},
		--if you are using a local stash for the gangs to access and vehicles add the below section as well and set the coords to whatever you prefer
		--otherwise just comment them out
		["stash"] = {
			[1] = {x = -1075.65, y = -1672.35, z = 4.47, h = 101.08}, 
		},
		["vehicle"] = {
			[1]  = {x = -1083.4, y = -1671.47, z = 4.7, h = 302.87},
		},
		maxLevel = 6,
			["allowedvehicles"] = {
			["xa21"] = "XA21",
			["asea"] = "Asea",
		},
	},
	--[[
	["testgang"] = {
		label = "test gang"
	},
	
	["hellsangels"] = {
		label = "Hells Angels"
	},
	["blackcartel"] = {
		label = "Black Cartel"
	}]]--
	["thelost"] = { 
		label = "The Lost",
		grades = {
			['0'] = {
				name = "Recluta",
			},
			['1'] = {
				name = "Patron",
			},
			['2'] = {
				name = "Soldado",
			},
			['3'] = {
				name = "Boss",
				isboss = true,
			},
		},
		["boss"] = {
			[1]  = {x = 976.19, y = -104.23, z = 74.85, h = 212.24},
		},
		--if you are using a local stash for the gangs to access and vehicles add the below section as well and set the coords to whatever you prefer
		--otherwise just comment them out
		["stash"] = {
			[1] = {x = -1079.77, y = -1679.64, z = 4.58, h = 122.63}, 
		},
		["vehicle"] = {
			[1]  = {x = -1083.4, y = -1671.47, z = 4.7, h = 302.87},
		},
		maxLevel = 6,
			["allowedvehicles"] = {
			["xa21"] = "XA21",
			["asea"] = "Asea",
		},
	}
}