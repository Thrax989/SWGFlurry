carbine_specops_bothan_carbine = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/carbine/carbine_specops_bothan_carbine.iff",
	craftingValues = {
		{"mindamage",125,175,0},
		{"maxdamage",250,400,0},
		{"attackspeed",6,4.1,1},
		{"woundchance",8,16,0},
		{"roundsused",30,65,0},
		{"hitpoints",1750,2500,0},
		{"zerorangemod",-5,45,0},
		{"maxrangemod",-5,45,0},
		{"midrange",50,50,0},
		{"midrangemod",15,45,0},
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
-- this is the special_ops_bola_carbine
addLootItemTemplate("carbine_specops_bothan_carbine", carbine_specops_bothan_carbine)
