rifle_naktra_crystal = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Naktra crystal rifle",
	directObjectTemplate = "object/weapon/ranged/rifle/ep3/rifle_naktra_crystal.iff",
	craftingValues = {
		{"mindamage",150,200,0},
		{"maxdamage",200,250,0},
		{"attackspeed",5.3,3.7,1},
		{"woundchance",8,16,0},
		{"roundsused",30,65,0},
		{"hitpoints",1500,1500,1500},
		{"zerorangemod",-35,-35,0},
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
-- this is the naktra_crystal_rifle
addLootItemTemplate("rifle_naktra_crystal", rifle_naktra_crystal)
