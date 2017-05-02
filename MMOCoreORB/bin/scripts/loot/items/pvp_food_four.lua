pvp_food_four={
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Fett Fruit",
	directObjectTemplate = "object/tangible/item/plant/force_melon.iff",
		templateType = CONSUMABLE,
	consumableType = 1,

	duration = 0,
	filling = 0,
	nutrition = 1500,

	effectType = 6,

	fillingMin = 0,
	fillingMax = 0,
	flavorMin = 0,
	flavorMax = 0,
	nutritionMin = 1500,
	nutritionMax = 1500,
	quantityMin = 0,
	quantityMax = 0,

	modifiers = { "health", 0, "action", 0, "mind", 0 },

	buffName = "",
	buffCRC = 0,
	speciesRestriction = "",
}

	customizationStringNames = {},
	customizationValues = {},
}

addLootItemTemplate("pvp_food_four", pvp_food_four)