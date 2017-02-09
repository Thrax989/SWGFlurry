pistol_launcher_generic = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/pistol/pistol_launcher_generic.iff",
	craftingValues = {
		{"mindamage",17,33,0},
		{"maxdamage",91,169,0},
		{"attackspeed",5.5,3.7,0},
		{"woundchance",13,23,0},
		{"hitpoints",750,750,0},
		{"attackhealthcost",20,10,0},
		{"attackactioncost",58,31,0},
		{"attackmindcost",20,10,0},
		{"roundsused",1,3,0},
		{"zerorangemod",0,0,0},
		{"maxrangemod",-70,-70,0},
		{"midrange",15,15,0},
		{"midrangemod",-15,0,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 800,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 20,
	junkMaxValue = 40

}

addLootItemTemplate("pistol_launcher_generic", pistol_launcher_generic)
