sword_lightsaber_umakk = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/melee/sword/sword_lightsaber_umakk.iff",
	craftingValues = {
		{"mindamage",61,170,0},
		{"maxdamage",171,258,0},
		{"attackspeed",4.6,3.1,0},
		{"woundchance",35,57,0},
		{"hitpoints",750,1500,0},
		{"zerorangemod",5,15,0},
		{"maxrangemod",5,15,0},
		{"midrange",3,3,0},
		{"midrangemod",5,15,0},
		{"maxrange",6,7,0},
		{"attackhealthcost",27,15,0},
		{"attackactioncosrt",27,15,0},
		{"attackmindcost",27,15,0},
		{"attackforcecost",15,10,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 500,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 30,
	junkMaxValue = 55
}

addLootItemTemplate("sword_lightsaber_umakk", sword_lightsaber_umakk)
