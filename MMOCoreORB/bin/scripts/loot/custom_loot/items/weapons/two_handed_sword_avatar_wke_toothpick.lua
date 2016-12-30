two_handed_sword_avatar_wke_toothpick = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/melee/2h_sword/2h_sword_avatar_wke_toothpick.iff",
	craftingValues = {
		{"mindamage",11,20,0},
		{"maxdamage",112,208,0},
		{"attackspeed",4.6,3.1,0},
		{"woundchance",15,27,0},
		{"hitpoints",750,1500,0},
		{"zerorangemod",-4,6,0},
		{"maxrangemod",-4,6,0},
		{"midrange",3,3,0},
		{"midrangemod",-4,6,0},
		{"maxrange",7,7,0},
		{"attackhealthcost",27,15,0},
		{"attackactioncosrt",65,35,0},
		{"attackmindcost",33,18,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 500,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 30,
	junkMaxValue = 55
}

addLootItemTemplate("two_handed_sword_avatar_wke_toothpick", two_handed_sword_avatar_wke_toothpick)
