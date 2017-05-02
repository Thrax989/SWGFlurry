pvp_food_one={
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Chewbacca Casserole",
	directObjectTemplate = "object/tangible/loot/misc/mt_casserole.iff",
	templateType = CONSUMABLE,
	craftingValues = {
	duration = 120,
	filling = 0,
	nutrition = 0,

	effectType = 1,

	fillingMin = 0,
	fillingMax = 0,

	flavorMin = 0,
	flavorMax = 0,
	nutritionMin = 0,
	nutritionMax = 0,
	quantityMin = 0,
	quantityMax = 0,
	
	modifiers = { "mind", 1000, "focus", 1000, "willpower", 1000, },

	buffName = "Chewbacca_Casserole",
	buffCRC = 0,
	speciesRestriction = "",
	
	consumableType = 5,
	

}

	customizationStringNames = {},
	customizationValues = {},
}

addLootItemTemplate("pvp_food_one", pvp_food_one)