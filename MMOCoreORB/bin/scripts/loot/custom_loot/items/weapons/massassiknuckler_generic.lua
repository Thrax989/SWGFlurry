
massassiknuckler_generic = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Massassi knuckler",
	directObjectTemplate = "object/weapon/melee/special/massassiknuckler_generic.iff",
	craftingValues = {
		{"mindamage",7,13,0},
		{"maxdamage",60,111,0},
		{"attackspeed",3.6,2.5,1},
		{"woundchance",14,26,0},
		{"hitpoints",750,1500,0},
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
	randomDotChance = 500,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 25,
	junkMaxValue = 45

}

addLootItemTemplate("massassiknuckler_generic", massassiknuckler_generic)
