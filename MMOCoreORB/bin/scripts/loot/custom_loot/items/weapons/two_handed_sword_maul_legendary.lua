two_handed_sword_maul_legendary = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/melee/2h_sword/2h_sword_maul_legendary.iff",
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

	-- staticDotChance: The chance of this weapon object dropping with a static dot on it. Higher number means less chance. Set to 0 to always have a static dot.
	staticDotChance = 0,

	-- staticDotType: 1 = Poison, 2 = Disease, 3 = Fire, 4 = Bleed
	staticDotType = 3,

	-- staticDotValues: Object map that can randomly or statically generate a dot (used for weapon objects.)
	staticDotValues = {
		{"attribute", 0, 0}, -- See CreatureAttributes.h in src for numbers.
		{"strength", 200, 200},
		{"duration", 1200, 1200},
		{"potency", 250, 250},
		{"uses", 25000, 28000}
	},
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 30,
	junkMaxValue = 55
}

addLootItemTemplate("two_handed_sword_maul_legendary", two_handed_sword_maul_legendary)
