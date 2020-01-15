ngearmor21 = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Clone Trooper Belt Imperial",
	directObjectTemplate = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_belt.iff",
	craftingValues = {
		{"armor_rating",1,1,0},
		{"kineticeffectiveness",10,40,10},
		{"armor_effectiveness",10,60,20},
		{"armor_integrity",15000, 25000,0},
		{"armor_health_encumbrance",125,75,0},
		{"armor_action_encumbrance",38,23,0},
		{"armor_mind_encumbrance",16,9,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	junkDealerTypeNeeded = JUNKGENERIC,
	junkMinValue = 35,
	junkMaxValue = 70
}

addLootItemTemplate("ngearmor21", ngearmor21)
