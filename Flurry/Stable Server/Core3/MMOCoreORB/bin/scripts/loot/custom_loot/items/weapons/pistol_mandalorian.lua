pistol_mandalorian = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Mandalorian pistol",
	directObjectTemplate = "object/weapon/ranged/pistol/pistol_mandalorian.iff",
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
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 20,
	junkMaxValue = 40

}
-- this is the crusader_m_xii_pistol
addLootItemTemplate("pistol_mandalorian", pistol_mandalorian)
