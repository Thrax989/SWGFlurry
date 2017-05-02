pvp_food={
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Skywalker Soup",
	directObjectTemplate = "object/tangible/loot/misc/mt_soup.iff",
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
	
	modifiers = { "health", 1500, "mind", 1500, "action", 1500, },

	buffName = "Skywalker_soup",
	buffCRC = 0,
	speciesRestriction = "",
	
	consumableType = 5,
	

}

	customizationStringNames = {},
	customizationValues = {},
}

addLootItemTemplate("pvp_food", pvp_food)