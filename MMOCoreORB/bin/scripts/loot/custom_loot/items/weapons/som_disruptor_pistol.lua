som_disruptor_pistol = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/pistol/som_disruptor_pistol.iff",
	craftingValues = {
		{"mindamage",11,36,0},
		{"maxdamage",58,170,0},
		{"attackspeed",5.1,3.7,1},
		{"woundchance",5,11,0},
		{"hitpoints",750,1500,0},
		{"attackhealthcost",17,8,0},
		{"attackactioncost",44,27,0},
		{"attackmindcost",25,14,0},
		{"roundsused",15,60,0},
		{"zerorangemod",18,33,0},
		{"maxrangemod",-90,-90,0},
		{"midrange",16,16,0},
		{"midrangemod",14,30,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 800,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 20,
	junkMaxValue = 40

}
-- this is the disruptor_pistol
addLootItemTemplate("som_disruptor_pistol", som_disruptor_pistol)
