two_handed_sword_sith_generic = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/melee/2h_sword/2h_sword_sith_generic.iff",
	craftingValues = {
		{"mindamage",65,155,0},
		{"maxdamage",165,330,0},
		{"attackspeed",4.2,3,1},
		{"woundchance",12,22,0},
		{"hitpoints",750,1500,0},
		{"zerorangemod",-15,10,0},
		{"maxrangemod",-15,10,0},
		{"midrange",6,7,0},
		{"midrangemod",-15,10,0},
		{"maxrange",6,7,0},
		{"attackhealthcost",31,4,0},
		{"attackactioncost",76,24,0},
		{"attackmindcost",31,19,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 500,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 30,
	junkMaxValue = 55
}

addLootItemTemplate("two_handed_sword_sith_generic", two_handed_sword_sith_generic)
