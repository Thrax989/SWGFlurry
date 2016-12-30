
nukefist = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Nukefist",
	directObjectTemplate = "object/weapon/melee/special/blasterfist.iff",
	craftingValues = {
		{"mindamage",425,475,0},
		{"maxdamage",500,550,0},
		{"attackspeed",4.2,2.9,1},
		{"woundchance",40,50,0},
		{"hitpoints",750,1500,0},
		{"zerorangemod",5,15,0},
		{"maxrangemod",5,15,0},
		{"midrange",3,3,0},
		{"midrangemod",5,15,0},
		{"maxrange",7,7,0},
		{"attackhealthcost",10,4,0},
		{"attackactioncost",45,24,0},
		{"attackmindcost",39,19,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 10,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 25,
	junkMaxValue = 45

}

addLootItemTemplate("nukefist", nukefist)
