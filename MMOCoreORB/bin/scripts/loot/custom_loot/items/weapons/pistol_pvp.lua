pistol_pvp = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "The Legendary Crimson Nova Pistol",
	directObjectTemplate = "object/weapon/ranged/pistol/pistol_pvp.iff",
	craftingValues = {
		{"mindamage",135,171,0},
		{"maxdamage",173,273,0},
		{"attackspeed",5.2,3.8,1},
		{"woundchance",6.8,14.7,0},
		{"hitpoints",750,1500,0},
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
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 20,
	junkMaxValue = 40

}
-- this is the legendary_crimson_nova_pistol
addLootItemTemplate("pistol_pvp", pistol_pvp)
