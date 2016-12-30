
ep3_loot_necrosis = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/melee/special/ep3_loot_necrosis.iff",
	craftingValues = {
		{"mindamage",70,95,0},
		{"maxdamage",120,181,0},
		{"attackspeed",4.2,2.9,1},
		{"woundchance",6,12,0},
		{"hitpoints",950,2500,0},
		{"zerorangemod",12,38,0},
		{"maxrangemod",12,38,0},
		{"midrange",3,3,0},
		{"midrangemod",22,38,0},
		{"maxrange",4,4,0},
		{"attackhealthcost",12,2,0},
		{"attackactioncost",25,11,0},
		{"attackmindcost",12,2,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 500,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 25,
	junkMaxValue = 45

}

addLootItemTemplate("ep3_loot_necrosis", ep3_loot_necrosis)
