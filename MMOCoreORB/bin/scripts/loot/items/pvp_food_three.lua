pvp_food_three={
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Palpatine Pie",
	directObjectTemplate = "object/tangible/loot/misc/mt_pie.iff",
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
	
	modifiers = { "health", 1000, "strength", 1000, "constitution", 1000, },

	buffName = "Palpatine_Pie",
	buffCRC = 0,
	speciesRestriction = "",
	
	consumableType = 5,
	

}

	customizationStringNames = {},
	customizationValues = {},
}

addLootItemTemplate("pvp_food_three", pvp_food_three)