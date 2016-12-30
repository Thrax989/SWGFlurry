ep3_loot_lifeblood = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/melee/2h_sword/ep3_loot_lifeblood.iff",
	craftingValues = {
		{"mindamage",153,198,0},
		{"maxdamage",335,536,0},
		{"attackspeed",8.5,5.8,1},
		{"woundchance",11,20,0},
		{"hitpoints",950,2000,0},
		{"zerorangemod",-6,45,0},
		{"maxrangemod",-6,25,0},
		{"midrange",3,3,0},
		{"midrangemod",-6,25,0},
		{"maxrange",7,7,0},
		{"attackhealthcost",120,63,0},
		{"attackactioncost",30,15,0},
		{"attackmindcost",16,7,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 500,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 30,
	junkMaxValue = 55
}

addLootItemTemplate("ep3_loot_lifeblood", ep3_loot_lifeblood)
