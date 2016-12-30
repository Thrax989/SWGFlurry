quest_2h_sword_maul = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/melee/2h_sword/quest_2h_sword_maul.iff",
	craftingValues = {
		{"mindamage",353,398,0},
		{"maxdamage",435,636,0},
		{"attackspeed",7.5,5.2,1},
		{"woundchance",21,30,0},
		{"hitpoints",1750,2500,0},
		{"zerorangemod",0,25,0},
		{"midrangemod",0,25,0},
		{"maxrangemod",0,25,0},
		{"midrange",3,3,0},
		{"maxrange",7,7,0},
		{"attackhealthcost",23,14,0},
		{"attackactioncost",47,28,0},
		{"attackmindcost",61,37,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 500,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 30,
	junkMaxValue = 55
}

addLootItemTemplate("quest_2h_sword_maul", quest_2h_sword_maul)
