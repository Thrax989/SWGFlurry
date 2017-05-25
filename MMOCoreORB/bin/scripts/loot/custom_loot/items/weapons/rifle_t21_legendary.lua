rifle_t21_legendary = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "T21 Scoped",
	directObjectTemplate = "object/weapon/ranged/rifle/rifle_t21_legendary.iff",
	craftingValues = {
		{"mindamage",150,200,0},
		{"maxdamage",200,250,0},
		{"attackspeed",5.3,3.7,1},
		{"woundchance",8,16,0},
		{"roundsused",30,65,0},
		{"hitpoints",1500,1500,1500},
		{"zerorangemod",-70,-70,0},
		{"maxrangemod",-50,-50,0},
		{"midrange",40,40,0},
		{"midrangemod",5,15,0},
		{"attackhealthcost",15,5,0},
		{"attackactioncost",15,5,0},
		{"attackmindcost",15,5,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = -1,
	junkDealerTypeNeeded = JUNKWEAPONS+JUNKJAWA,
	junkMinValue = 25,
	junkMaxValue = 45

}
-- this is the legendary_t21_rifle
addLootItemTemplate("rifle_t21_legendary", rifle_t21_legendary)
