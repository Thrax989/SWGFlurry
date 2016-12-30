rifle_bowcaster_master = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/rifle/rifle_bowcaster_master.iff",
	craftingValues = {
		{"mindamage",460,510,0},
		{"maxdamage",570,760,0},
		{"attackspeed",9.7,4.4,0},
		{"woundchance",21,35,0},
		{"hitpoints",750,1500,0},
		{"attackhealthcost",36,16,0},
		{"attackactioncost",27,13,0},
		{"attackmindcost",57,29,0},
		{"roundsused",30,65,0},
		{"zerorangemod",5,20,0},
		{"maxrangemod",5,20,0},
		{"midrange",50,50,0},
		{"midrangemod",5,20,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 500,
	junkDealerTypeNeeded = JUNKWEAPONS+JUNKJAWA,
	junkMinValue = 25,
	junkMaxValue = 45

}
-- this is the master_crafted_bowcaster
addLootItemTemplate("rifle_bowcaster_master", rifle_bowcaster_master)
