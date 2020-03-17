pistol_fwg5_legendary = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Fwg5 pistol",
	directObjectTemplate = "object/weapon/ranged/pistol/pistol_fwg5_legendary.iff",
	craftingValues = {
		{"mindamage",11,100,0},
		{"maxdamage",63,224,0},
		{"attackspeed",5.3,3.4,0},
		{"woundchance",4.2,8.6,0},
		{"hitpoints",750,750,0},
		{"attackhealthcost",20,11,0},
		{"attackactioncost",46,25,0},
		{"attackmindcost",21,11,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 400,

	-- staticDotChance: The chance of this weapon object dropping with a static dot on it. Higher number means less chance. Set to 0 to always have a static dot.
	staticDotChance = 0,

	-- staticDotType: 1 = Poison, 2 = Disease, 3 = Fire, 4 = Bleed
	staticDotType = 1,

	-- staticDotValues: Object map that can randomly or statically generate a dot (used for weapon objects.)
	staticDotValues = {
		{"attribute", 0, 0}, -- See CreatureAttributes.h in src for numbers.
		{"strength", 200, 200},
		{"duration", 1200, 1200},
		{"potency", 250, 250},
		{"uses", 25000, 28000}
	},
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 20,
	junkMaxValue = 40

}
-- this is the legendary_fwg5_pistol
addLootItemTemplate("pistol_fwg5_legendary", pistol_fwg5_legendary)
