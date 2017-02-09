rifle_t21_legendary = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "T21 rifle",
	directObjectTemplate = "object/weapon/ranged/rifle/rifle_t21_legendary.iff",
	craftingValues = {
		{"mindamage",60,110,0},
		{"maxdamage",170,360,0},
		{"attackspeed",12.7,7.4,0},
		{"woundchance",11,25,0},
		{"hitpoints",750,750,0},
		{"attackhealthcost",62,31,0},
		{"attackactioncost",53,26,0},
		{"attackmindcost",115,57,0},
		{"roundsused",30,65,0},
		{"zerorangemod",-70,-70,0},
		{"maxrangemod",-10,15,0},
		{"midrange",50,50,0},
		{"midrangemod",10,10,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 500,

	-- staticDotChance: The chance of this weapon object dropping with a static dot on it. Higher number means less chance. Set to 0 to always have a static dot.
	staticDotChance = 0,

	-- staticDotType: 1 = Poison, 2 = Disease, 3 = Fire, 4 = Bleed
	staticDotType = 4,

	-- staticDotValues: Object map that can randomly or statically generate a dot (used for weapon objects.)
	staticDotValues = {
		{"attribute", 0, 0}, -- See CreatureAttributes.h in src for numbers.
		{"strength", 200, 200},
		{"duration", 1200, 1200},
		{"potency", 250, 250},
		{"uses", 25000, 28000}
	},
	junkDealerTypeNeeded = JUNKWEAPONS+JUNKJAWA,
	junkMinValue = 25,
	junkMaxValue = 45

}
-- this is the legendary_t21_rifle
addLootItemTemplate("rifle_t21_legendary", rifle_t21_legendary)
