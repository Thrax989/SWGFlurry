ep3_loot_retaliation = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/rifle/ep3_loot_retaliation.iff",
	craftingValues = {
		{"mindamage",100,195,0},
		{"maxdamage",270,430,0},
		{"attackspeed",8.7,6.4,0},
		{"woundchance",11,25,0},
		{"hitpoints",1550,2250,0},
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
	junkDealerTypeNeeded = JUNKWEAPONS+JUNKJAWA,
	junkMinValue = 25,
	junkMaxValue = 45

}
-- this is the covert_retaliation
addLootItemTemplate("ep3_loot_retaliation", ep3_loot_retaliation)
