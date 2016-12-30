
ep3_loot_pestilence = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/melee/polearm/ep3_loot_pestilence.iff",
	craftingValues = {
		{"mindamage",251,310,0},
		{"maxdamage",355,511,0},
		{"attackspeed",5.2,3.9,1},
		{"woundchance",16,43,0},
		{"hitpoints",850,1900,0},
		{"zerorangemod",-2,28,0},
		{"maxrangemod",-2,18,0},
		{"midrange",3,33,0},
		{"midrangemod",-2,8,0},
		{"maxrange",4,4,0},
		{"attackhealthcost",12,2,0},
		{"attackactioncost",25,11,0},
		{"attackmindcost",12,2,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 1000,

	-- staticDotChance: The chance of this weapon object dropping with a static dot on it. Higher number means less chance. Set to 0 to always have a static dot.
	staticDotChance = 0,

	-- staticDotType: 1 = Poison, 2 = Disease, 3 = Fire, 4 = Bleed
	staticDotType = 2,

	-- staticDotValues: Object map that can randomly or statically generate a dot (used for weapon objects.)
	staticDotValues = {
		{"attribute", 0, 2}, -- See CreatureAttributes.h in src for numbers.
		{"strength", 60, 350},
		{"duration", 45, 120},
		{"potency", 70, 120},
		{"uses", 8000, 24000}
	},
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 25,
	junkMaxValue = 45

}

addLootItemTemplate("ep3_loot_pestilence", ep3_loot_pestilence)
