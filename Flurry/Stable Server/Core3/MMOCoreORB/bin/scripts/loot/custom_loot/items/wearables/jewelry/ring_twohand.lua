ring_twohand = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Hammers Wall",
	directObjectTemplate = "object/tangible/wearables/ring/aakuan_ring.iff",
	craftingValues = {
	},
	customizationStringNames = {},
	customizationValues = {},
	skillMods = {
		{"twohandmelee_accuracy", 25},
		{"twohandmelee_damage", 25},
		{"twohandmelee_speed", 25},
		{"dodge", 15},
    {"counterattack", 15},
	}
}

addLootItemTemplate("ring_twohand", ring_twohand)
