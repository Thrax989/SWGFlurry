carbine_bounty_ee3 = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/carbine/carbine_bounty_ee3.iff",
	craftingValues = {
		{"mindamage",107,145,0},
		{"maxdamage",230,370,0},
		{"attackspeed",6,4.1,1},
		{"woundchance",8,16,0},
		{"roundsused",30,65,0},
		{"hitpoints",1750,2500,0},
		{"zerorangemod",-5,45,0},
		{"maxrangemod",-5,45,0},
		{"midrange",50,50,0},
		{"midrangemod",15,40,0},
		{"attackhealthcost",33,18,0},
		{"attackactioncost",52,28,0},
		{"attackmindcost",26,14,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 500,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 30,
	junkMaxValue = 55

}
-- this is the master_crafted_ee3_carbine
addLootItemTemplate("carbine_bounty_ee3", carbine_bounty_ee3)
