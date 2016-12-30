quest_pistol_launcher = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/pistol/quest_pistol_launcher.iff",
	craftingValues = {
		{"mindamage",17,37,0},
		{"maxdamage",79,170,0},
		{"attackspeed",5.1,3.7,0},
		{"woundchance",8,18,0},
		{"hitpoints",750,750,0},
		{"attackhealthcost",23,11,0},
		{"attackactioncost",57,32,0},
		{"attackmindcost",23,11,0},
		{"midrangemod",-52,-28,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 800,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 20,
	junkMaxValue = 40

}

addLootItemTemplate("quest_pistol_launcher", quest_pistol_launcher)
