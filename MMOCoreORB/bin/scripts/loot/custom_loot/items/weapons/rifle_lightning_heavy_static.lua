rifle_lightning_heavy_static = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Lightning rifle",
	directObjectTemplate = "object/weapon/ranged/rifle/rifle_lightning_heavy_static.iff",
	craftingValues = {
		{"mindamage",60,110,0},
		{"maxdamage",170,360,0},
		{"attackspeed",12.7,7.4,0},
		{"woundchance",11,25,0},
		{"hitpoints",750,750,0},
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
-- this is a heavy_lightning_rifle_static
addLootItemTemplate("rifle_lightning_heavy_static", rifle_lightning_heavy_static)
