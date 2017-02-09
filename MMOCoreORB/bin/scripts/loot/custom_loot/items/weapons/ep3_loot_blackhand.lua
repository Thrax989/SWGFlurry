ep3_loot_blackhand = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/pistol/ep3_loot_blackhand.iff",
	craftingValues = {
		{"mindamage",111,221,0},
		{"maxdamage",278,372,0},
		{"attackspeed",5.3,3.8,1},
		{"woundchance",5,11,0},
		{"hitpoints",750,750,0},
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
	randomDotChance = 500,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 30,
	junkMaxValue = 55

}
-- this is the blackhand_annhilator
addLootItemTemplate("ep3_loot_blackhand", ep3_loot_blackhand)
