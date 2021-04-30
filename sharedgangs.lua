QBShared.Jobs = {
	["unemployed"] = { 
		label = "Unemployed",
		grades = {
			['0'] = {
				name = "Homeless",
				payment = 15
			},
			['1'] = {
				name = "Unemployed",
				payment = 15
			},
		},
		['boss'] = {
			[1] = {x = 451.95, y = -973.71, z = 30.69}
		},
		defaultDuty = true,
	},
	
	----------------------------------------------------POLICE
	["police"] = { 
		label = "LSPD",
		grades = {
			['0'] = {
				name = "Cadet",
				payment = 35
			},
			['1'] = {
				name = "Trooper",
				payment = 40
			},
			['2'] = {
				name = "Senior Trooper",
				payment = 45
			},
			['3'] = {
				name = "Corporal",
				payment = 50
			},
			['4'] = {
				name = "Sergeant",
				payment = 60
			},
			['5'] = {
				name = "Lieutenant",
				payment = 65
			},
			['6'] = {
				name = "Captain",
				payment = 70
			},
			['7'] = {
				name = "Colonel",
				payment = 85
			},
			['8'] = {
				name = "Assistant Chief",
				isboss = true,
				payment = 95
			},
			['9'] = {
				name = "Chief",
				isboss = true,
				payment = 100
			},
		},
		['boss'] = {
			[1] = {x = 451.95, y = -973.71, z = 30.69}
		},
		defaultDuty = true,
	},
	-------------------------------------------------------------------------DOCTOR
	["doctor"] = { 
		label = "PBMedical",
		grades = {
			['0'] = {
				name = "Intern",
				payment = 30
			},
			['1'] = {
				name = "EMT",
				payment = 35
			},
			['2'] = {
				name = "Senior EMT",
				payment = 40
			},
			['3'] = {
				name = "Paramedic",
				payment = 45
			},
			['4'] = {
				name = "Doctor",
				payment = 50
			},
			['5'] = {
				name = "Lead Doctor",
				payment = 65
			},
			['6'] = {
				name = "Director of Medicine",
				payment = 70
			},
			['7'] = {
				name = "Director of Administration",
				payment = 85
			},
			['8'] = {
				name = "Assistant Dean",
				isboss = true,
				payment = 95
			},
			['9'] = {
				name = "Dean of Medicine",
				isboss = true,
				payment = 100
			},
			
		},
		["boss"] = {
			[1] = {x = 335.17, y = -593.36, z = 43.28, h = 248.57}, 
		},
		defaultDuty = true,
	},
	--------------------------------------------------------------------AMBULANCE
	["ambulance"] = { 
		label = "Psychiatric",
		grades = {
			['0'] = {
				name = "Intern",
				payment = 30
			},
			['1'] = {
				name = "Yoga Instructor",
				payment = 35
			},
			['2'] = {
				name = "Counselor",
				payment = 40
			},
			['3'] = {
				name = "Therapist",
				payment = 45
			},
			['4'] = {
				name = "Psychiatrist",
				payment = 50
			},
			['5'] = {
				name = "Head of Psychiatry",
				payment = 65
			},
			['6'] = {
				name = "Facility Warden",
				payment = 70
			},
			['7'] = {
				name = "Assistant Dean of Parsons'",
				isboss = true,
				payment = 85
			},
			['8'] = {
				name = "Dean of Parsons'",
				isboss = true,
				payment = 95
			},
			
		},
		["boss"] = {
			[1] = {x = -1524.1, y = 843.64, z = 181.59, h = 202.47}, 
		},
		defaultDuty = true,
	},
	---------------------------------------------------------------------------------TRUCKER
	["trucker"] = { 
		label = "Hayes Auto Tow Yard",
		grades = {
			['0'] = {
				name = "Tow Truck Driver",
				payment = 20
			},
			['1'] = {
				name = "Repo Driver",
				payment = 25
			},
			['2'] = {
				name = "Hayes Auto Manager",
				isboss = true,
				payment = 30
			},
			['3'] = {
				name = "Hayes Auto Owner",
				isboss = true,
				payment = 40
			},
		},
		["coords"] = {
			[1] = {x = 335.17, y = -593.36, z = 43.28, h = 248.57}, 
		},
		["boss"] = {
			[1] = {x = 474.64, y = -1308.56, z = 29.21, h = 29.8},  
		},
		defaultDuty = true,
	},
	---------------------------------------------------------------------------TAXI
	["taxi"] = { 
		label = "DownTown Taxi Co",
		grades = {
			['0'] = {
				name = "Taxi Driver",
				payment = 20
			},
			['1'] = {
				name = "Tow Operator",
				payment = 25
			},
			['2'] = {
				name = "Manager",
				isboss = true,
				payment = 30
			},
			['3'] = {
				name = "Downtown Taxi Owner",
				isboss = true,
				payment = 40
			},
		},
		["coords"] = {
			[1] = {x = 335.17, y = -593.36, z = 43.28, h = 248.57}, 
		},
		["boss"] = {
			[1] = {x = 905.69, y = -150.45, z = 74.17, h = 326.35}, 
		},
		defaultDuty = true,
	},
	---------------------------------------------------------------------------REALESTATEAGENT
	["realestate"] = { 
		label = "Dynasty 8 Realestate",
		grades = {
			['0'] = {
				name = "Secretary",
				payment = 20
			},
			['1'] = {
				name = "Real Estate Agent",
				payment = 25
			},
			['2'] = {
				name = "Dynasty 8 Manager",
				isboss = true,
				payment = 30
			},
			['3'] = {
				name = "Dynasty 8 Owner",
				isboss = true,
				payment = 40
			},
		},
		["boss"] = {
			[1] = {x = -814.33, y = -1357.08, z = 5.23, h = 40.51}, 
		},
		defaultDuty = true,
	},
	----------------------------------------------------------------------------TRACKER2
	["tow"] = { 
		label = "Hayes Auto Tow Yard",
		grades = {
			['0'] = {
				name = "Tow Truck Driver",
				payment = 20
			},
			['1'] = {
				name = "Repo Driver",
				payment = 25
			},
			['2'] = {
				name = "Hayes Auto Manager",
				isboss = true,
				payment = 30
			},
			['3'] = {
				name = "Hayes Auto Owner",
				isboss = true,
				payment = 40
			},
		},
		["coords"] = {
			[1] = {x = 335.17, y = -593.36, z = 43.28, h = 248.57}, 
		},
		["boss"] = {
			[1] = {x = 474.64, y = -1308.56, z = 29.21, h = 29.8}, 
		},
		defaultDuty = true,
	},
	--------------------------------------------------------------------REPORTER
	["reporter"] = { 
		label = "Weazle News",
		grades = {
			['0'] = {
				name = "Camera Man",
				payment = 20
			},
			['1'] = {
				name = "Reporter",
				payment = 25
			},
			['2'] = {
				name = "News Director",
				isboss = true,
				payment = 30
			},
			['3'] = {
				name = "Weazle News Owner",
				isboss = true,
				payment = 40
			},
		},
		["coords"] = {
			[1] = {x = 335.17, y = -593.36, z = 43.28, h = 248.57}, 
		},
		["boss"] = {
			[1] = {x = -580.81, y = -936.58, z = 23.88, h = 88.69}, 
		},
		defaultDuty = true,
	},
	---------------------------------------------------------------------------JUDICE
	["judge"] = { 
		label = "Judicial Court System",
		grades = {
			['0'] = {
				name = "Judge Canditate",
				payment = 30
			},
			['1'] = {
				name = "Judge",
				payment = 45
			},
			['2'] = {
				name = "Senior Judge",
				payment = 55
			},
			['3'] = {
				name = "Head Judge",
				isboss = true,
				payment = 70
			},
		},
		["boss"] = {
			[1] = {x = 224.44, y = -437.29, z = 47.96, h = 249.27}, 
		},
		defaultDuty = true,
	},
	------------------------------------------------------------------------------LAWYER
	["lawyer"] = { 
		label = "Law Offices of LS",
		grades = {
			['0'] = {
				name = "Advocate",
				payment = 30
			},
			['1'] = {
				name = "Defense Attorney",
				payment = 40
			},
			['2'] = {
				name = "State Prosecuter",
				payment = 40
			},
			['3'] = {
				name = "Attorney General",
				isboss = true,
				payment = 50
			},
		},
		["boss"] = {
			[1] = {x = -80.72, y = -802.25, z = 243.4, h = 258.09}, 
		},
		defaultDuty = true,
	},
	-----------------------------------------------------------------------------CARDEALER
	["cardealer"] = { 
		label = "Luxury Auto Dealership",
		grades = {
			['0'] = {
				name = "Sales Team Member",
				payment = 20
			},
			['1'] = {
				name = "Lead Sales Team Member",
				payment = 30
			},
			['2'] = {
				name = "Dealership Manager",
				isboss = true,
				payment = 40
			},
			['3'] = {
				name = "Dealership Owner",
				isboss = true,
				payment = 50
			},
		},
			["boss"] = {
				[1] = {x = -790.01, y = -214.3, z = 37.08, h = 21.01}, 
			},
		
		defaultDuty = true,
	},
	----------------------------------------------------------------------------MECHANIC
	["mechanic"] = { 
		label = "Mechanics Shop",
		grades = {
			['0'] = {
				name = "Recruit",
				payment = 30
			},
			['1'] = {
				name = "Tow Operator",
				payment = 30
			},
			['2'] = {
				name = "Senior",
				payment = 45
			},
			['3'] = {
				name = "Manager",
				isboss = true,
				payment = 50
			},
			['4'] = {
				name = "Owner",
				isboss = true,
				payment = 55
			},
		},
		["boss"] = {
			[1] = {x = -207.39, y = -1340.68, z = 34.89, h = 209.06}, 
		},
		defaultDuty = true,
	},
	-----------------------------------------------------------------------NETTURBINO
	["garbage"] = { 
		label = "Los Santos Sanitation Department",
		grades = {
			['0'] = {
				name = "Recruit",
				payment = 20
			},
			['1'] = {
				name = "Garbage Collector",
				payment = 30
			},
			['2'] = {
				name = "Sanitation Supervisor",
				isboss = true,
				payment = 40
			},
			['3'] = {
				name = "Sanitation Owner",
				isboss = true,
				payment = 50
			},
		},
		["coords"] = {
			[1] = {x = 335.17, y = -593.36, z = 43.28, h = 248.57}, 
		},
		["boss"] = {
			[1] = {x = -322.25, y = -1545.84, z = 31.02, h = 90.87}, 
		},
		defaultDuty = true,
	},
	------------------------------------------------------------------------HOTDOG
	["hotdog"] = { 
		label = "Chuauha HotDogs",
		grades = {
			['0'] = {
				name = "Hotdog Vendor",
				payment = 15
			},
			['1'] = {
				name = "Head Chef",
				payment = 25
			},
			['2'] = {
				name = "Chuauha Hotdog Owner",
				isboss = true,
				payment = 35
			},
		},
		["coords"] = {
			[1] = {x = 335.17, y = -593.36, z = 43.28, h = 248.57}, 
		},
		["boss"] = {
			[1] = {x = 41.5, y = -1009.68, z = 29.49, h = 243.53}, 
		},
		defaultDuty = true,
	},

	
	----------------------------------------------------------------VANILLA
	["vanilla"] = { 
		label = "Vanilla Unicorn",
		grades = {
			['0'] = {
				name = "Bouncer",
				payment = 15
			},
			['1'] = {
				name = "Bartender",
				payment = 25
			},
			['2'] = {
				name = "Stripper",
				payment = 25
			},
			['3'] = {
				name = "Vanilla Unicorn Manager",
				isboss = true,
				payment = 35
			},
			['4'] = {
				name = "Vanilla Unicorn Owner",
				isboss = true,
				payment = 40
			},
		},
		["boss"] = {
			[1] = {x = 94.54, y = -1293.14, z = 29.27, h = 302.96}, 
		},
		defaultDuty = true,
	},
	-------------------------------------------------------------------------COFFESHOP
	["coffeeshop"] = { 
		label = "Coffee Shop",
		grades = {
			['0'] = {
				name = "Employee",
				isboss = true,
				payment = 80
			},
			['1'] = {
				name = "Shift Supervisor",
				isboss = true,
				payment = 85
			},
			['2'] = {
				name = "Boss",
				isboss = true,
				payment = 110
			},
		},
		["coords"] = {
			[1] = {x = 335.17, y = -593.36, z = 43.28, h = 248.57}, 
		},
		["boss"] = {
			[1] = {x = -634.71, y = 228.1, z = 81.88, h = 0.14}, 
		},
		defaultDuty = true,
	},
	----------------------------------------------------------------------MAIALI
	["pig"] = { 
	label = "O'Neil Pig Farm",
	grades = {
		['0'] = {
			name = "Pig Herder",
			payment = 15
		},
		['1'] = {
			name = "Pig Butcher",
			payment = 20
		},
		['2'] = {
			name = "O'Neil Pig Farm Owner",
			isboss = true,
			payment = 30
		},
	},
	["coords"] = {
		[1] = {x = 335.17, y = -593.36, z = 43.28, h = 248.57}, 
	},
	["boss"] = {
		[1] = {x = 41.5, y = -1009.68, z = 29.49, h = 243.53}, 
	},
	defaultDuty = true,
	},
	---------------------------------------------------------------------FRUIT PIK
	["fruit"] = { 
	label = "Paleto Fruit Orchard",
	grades = {
		['0'] = {
			name = "Fruit Picker",
			payment = 15
		},
		['1'] = {
			name = "Orange Merchant",
			payment = 20
		},
		['2'] = {
			name = "Fruit Orchard Owner",
			isboss = true,
			payment = 30
		},
	},
	["coords"] = {
		[1] = {x = 335.17, y = -593.36, z = 43.28, h = 248.57}, 
	},
	["boss"] = {
		[1] = {x = 41.5, y = -1009.68, z = 29.49, h = 243.53}, 
	},
	defaultDuty = true,
	},
	------------------------------------------------------------------GALLINE
	["chicken"] = { 
	label = "O'Neil Chicken Ranch",
	grades = {
		['0'] = {
			name = "Chicken Plucker",
			payment = 15
		},
		['1'] = {
			name = "Chicken Packer",
			payment = 20
		},
		['2'] = {
			name = "O'Neil Chicken Ranch Owner",
			isboss = true,
			payment = 30
		},
	},
	["coords"] = {
		[1] = {x = 335.17, y = -593.36, z = 43.28, h = 248.57}, 
	},
	["boss"] = {
		[1] = {x = 41.5, y = -1009.68, z = 29.49, h = 243.53}, 
	},
	defaultDuty = true,
	},
	---------------------------------------------------------------RECYCLING
	["recycling"] = { 
	label = "Paleto Recycling Center",
	grades = {
		['0'] = {
			name = "Recycling Collector",
			payment = 15
		},
		['1'] = {
			name = "Warehouse Manager",
			payment = 20
		},
		['2'] = {
			name = "Paleto Recycling Owner",
			isboss = true,
			payment = 30
		},
	},
	["coords"] = {
		[1] = {x = 335.17, y = -593.36, z = 43.28, h = 248.57}, 
	},
	["boss"] = {
		[1] = {x = 41.5, y = -1009.68, z = 29.49, h = 243.53}, 
	},
	defaultDuty = true,
	},
	-------------------------------------------------------------------------MINER
	["miner"] = { 
	label = "Miners Quarry",
	grades = {
		['0'] = {
			name = "Quarry Hauler",
			payment = 15
		},
		['1'] = {
			name = "Mining Merchant",
			payment = 20
		},
		['2'] = {
			name = "Quarry Land Owner",
			isboss = true,
			payment = 30
		},
	},
	["coords"] = {
		[1] = {x = 335.17, y = -593.36, z = 43.28, h = 248.57}, 
	},
	["boss"] = {
		[1] = {x = 41.5, y = -1009.68, z = 29.49, h = 243.53}, 
	},
	defaultDuty = true,
	},
	-----------------------------------------------------------MAGAZINIERE
	["forklift"] = { 
	label = "Port of LS",
	grades = {
		['0'] = {
			name = "Forklift Driver",
			payment = 15
		},
		['1'] = {
			name = "Warehouse Manager",
			payment = 20
		},
		['2'] = {
			name = "Warehouse Owner",
			isboss = true,
			payment = 30
		},
	},
	["coords"] = {
		[1] = {x = 335.17, y = -593.36, z = 43.28, h = 248.57}, 
	},
	["boss"] = {
		[1] = {x = 41.5, y = -1009.68, z = 29.49, h = 243.53}, 
	},
	defaultDuty = true,
	},
	--------------------------------------------------------------PESCATORE
	["fisherman"] = { 
	label = "La Spada Fish Restaurant",
	grades = {
		['0'] = {
			name = "Fisherman",
			payment = 15
		},
		['1'] = {
			name = "La Spada Manager",
			payment = 20
		},
		['2'] = {
			name = "La Spada Owner",
			isboss = true,
			payment = 30
		},
	},
	["coords"] = {
		[1] = {x = 335.17, y = -593.36, z = 43.28, h = 248.57}, 
	},
	["boss"] = {
		[1] = {x = 41.5, y = -1009.68, z = 29.49, h = 243.53}, 
	},
	defaultDuty = true,
	},

	["tequilala"] = { 
		label = "Tequilala",
		grades = {
			['0'] = {
				name = "Bouncer",
				payment = 15
			},
			['1'] = {
				name = "Bartender",
				payment = 25
			},
			['2'] = {
				name = "Stripper",
				payment = 25
			},
			['3'] = {
				name = "Tequilala Manager",
				isboss = true,
				payment = 35
			},
			['4'] = {
				name = "Tequilala Owner",
				isboss = true,
				payment = 40
			},
		},
		["boss"] = {
			[1] = {x = -572.98, y = 293.11, z = 79.18, h = 27.53}, 
		},
		defaultDuty = true,
	},
	
}