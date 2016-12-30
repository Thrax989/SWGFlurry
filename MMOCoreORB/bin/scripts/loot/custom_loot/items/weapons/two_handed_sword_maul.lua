two_handed_sword_maul = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/melee/2h_sword/2h_sword_maul.iff",
	craftingValues = {
		{"mindamage",153,198,0},
		{"maxdamage",235,436,0},
		{"attackspeed",7.5,5.2,1},
		{"woundchance",11,20,0},
		{"hitpoints",750,1500,0},
		{"zerorangemod",0,25,0},
		{"midrangemod",0,25,0},
		{"maxrangemod",0,25,0},
		{"midrange",3,3,0},
		{"maxrange",7,7,0},
		{"attackhealthcost",23,14,0},
		{"attackactioncost",47,28,0},
		{"attackmindcost",61,37,0},
		--{"roundsused",15,45,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 1000,
	junkDealerTypeNeeded = JUNKWEAPONS+JUNKJAWA,
	junkMinValue = 25,
	junkMaxValue = 45

}

addLootItemTemplate("two_handed_sword_maul", two_handed_sword_maul)
