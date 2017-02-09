ep3_loot_hydra = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Hydra pistol",
	directObjectTemplate = "object/weapon/ranged/pistol/ep3_loot_hydra.iff",
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
	randomDotChance = 800,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 20,
	junkMaxValue = 40

}
-- this is the red_hydra_z5
addLootItemTemplate("ep3_loot_hydra", ep3_loot_hydra)
