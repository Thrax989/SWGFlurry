two_handed_sword_scythe = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Scythe Sword",
	directObjectTemplate = "object/weapon/melee/2h_sword/2h_sword_scythe.iff",
	craftingValues = {
		{"mindamage",150,200,0},
		{"maxdamage",200,250,0},
		{"attackspeed",3.8,2.8,1.4},
		{"woundchance",18,28,0},
		{"hitpoints",1500,1500,1500},
		{"zerorangemod",5,15,0},
		{"maxrangemod",5,15,0},
		{"midrange",3,3,0},
		{"midrangemod",5,15,0},
		{"maxrange",7,7,0},
		{"attackhealthcost",36,18,0},
		{"attackactioncost",54,30,0},
		{"attackmindcost",36,18,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = -1,
	junkDealerTypeNeeded = JUNKWEAPONS+JUNKJAWA,
	junkMinValue = 25,
	junkMaxValue = 45

}

addLootItemTemplate("two_handed_sword_scythe", two_handed_sword_scythe)
