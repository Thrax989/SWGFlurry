
ep3_loot_pestilence = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Pestilence",
	directObjectTemplate = "object/weapon/melee/polearm/ep3_loot_pestilence.iff",
	craftingValues = {
		{"mindamage",49,91,0},
		{"maxdamage",196,364,0},
		{"attackspeed",6.5,4.5,1},
		{"woundchance",23,43,0},
		{"hitpoints",750,1500,0},
		{"zerorangemod",-45,-20,0},
		{"maxrangemod",-40,-20,0},
		{"midrange",3,3,0},
		{"midrangemod",-45,-20,0},
		{"maxrange",7,7,0},
		{"attackhealthcost",78,45,0},
		{"attackactioncost",65,35,0},
		{"attackmindcost",29,15,0},
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
