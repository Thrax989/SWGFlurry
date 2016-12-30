pistol_fwg5_legendary = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/pistol/pistol_fwg5_legendary.iff",
	craftingValues = {
		{"mindamage",235,271,0},
		{"maxdamage",273,373,0},
		{"attackspeed",3.2,1.8,1},
		{"woundchance",16.8,28.7,0},
		{"hitpoints",1750,2500,0},
		{"attackhealthcost",32,17,0},
		{"attackactioncost",51,29,0},
		{"attackmindcost",22,12,0},
		{"roundsused",15,60,0},
		{"zerorangemod",18,33,0},
		{"maxrangemod",-90,-90,0},
		{"midrange",16,16,0},
		{"midrangemod",14,30,0},
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
