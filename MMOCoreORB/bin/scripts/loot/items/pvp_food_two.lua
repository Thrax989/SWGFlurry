pvp_food_two={
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Borvo Bread",
	directObjectTemplate = "object/tangible/loot/misc/mt_flatbread.iff",
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
	
	modifiers = { "action", 1000, "quickness", 1000, "stamina", 1000, },

	buffName = "Borvo_Bread",
	buffCRC = 0,
	speciesRestriction = "",
	
	consumableType = 5,
	

}

	customizationStringNames = {},
	customizationValues = {},
}

addLootItemTemplate("pvp_food_two", pvp_food_two)