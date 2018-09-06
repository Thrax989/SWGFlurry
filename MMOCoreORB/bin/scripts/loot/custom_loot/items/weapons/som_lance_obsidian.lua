
som_lance_obsidian = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/melee/polearm/som_lance_obsidian.iff",
	craftingValues = {
		{"mindamage",67,93,0},
		{"maxdamage",203,366,0},
		{"attackspeed",7.2,4.1,1},
		{"woundchance",9,18,0},
		{"hitpoints",1500,1500,0},
		{"zerorangemod",5,15,0},
		{"maxrangemod",5,15,0},
		{"midrange",3,3,0},
		{"midrangemod",5,15,0},
		{"maxrange",5,5,0},
		{"attackhealthcost",26,14,0},
		{"attackactioncost",59,32,0},
		{"attackmindcost",29,15,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 425,
	junkDealerTypeNeeded = JUNKARMS,
	junkMinValue = 2500,
	junkMaxValue = 4500

}

addLootItemTemplate("som_lance_obsidian", som_lance_obsidian)
