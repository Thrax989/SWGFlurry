ring_resistance = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Resistance Aura Signet",
	directObjectTemplate = "object/tangible/wearables/ring/aakuan_ring.iff",
	craftingValues = {},
	customizationStringNames = {},
	customizationValues = {},
	skillMods = {
		{"combat_bleeding_defense", 25},
		{"resistance_disease", 25},
		{"resistance_fire", 25},
		{"resistance_poison", 25},
    {"resistance_bleeding", 25},
	}
}

addLootItemTemplate("ring_resistance", ring_resistance)