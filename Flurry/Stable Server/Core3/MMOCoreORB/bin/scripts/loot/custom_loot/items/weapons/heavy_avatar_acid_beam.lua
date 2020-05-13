heavy_avatar_acid_beam = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Heavy acid beam",
	directObjectTemplate = "object/weapon/ranged/heavy/heavy_avatar_acid_beam.iff",
  craftingValues = {
		{"mindamage",150,500,0},
		{"maxdamage",400,900,0},
		{"attackspeed",7.7,5.0,1},
		{"woundchance",25.0,50.0,0},
		{"hitpoints",750,1500,0},
		{"zerorangemod",-21,10,0},
		{"maxrangemod",-65,-35,0},
		{"midrange",35,35,0},
		{"midrangemod",15,25,0},
		{"maxrange",64,64,0},
		{"attackhealthcost",120,70,0},
		{"attackactioncost",80,50,0},
		{"attackmindcost",40,30,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 900,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 30,
	junkMaxValue = 55

}

addLootItemTemplate("heavy_avatar_acid_beam", heavy_avatar_acid_beam)
