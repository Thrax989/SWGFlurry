force_crystal_sunriders_destiny = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Sunrider's Destiny",
	directObjectTemplate = "object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff",
	craftingValues = {
		{"mindamage",0,50,0},
		{"maxdamage",10,50,0},
		{"attackspeed",1,-1,5},
		{"woundchance",4,8,5},
		{"hitpoints",2500,10000,0},
		{"attackhealthcost",0,5,0},
		{"attackactioncost",0,5,0},
		{"attackmindcost",0,5,0},
		{"forcecost",0,4,0},
		{"color",29,29,0},
		{"quality",7,7,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("force_crystal_sunriders_destiny", force_crystal_sunriders_destiny)