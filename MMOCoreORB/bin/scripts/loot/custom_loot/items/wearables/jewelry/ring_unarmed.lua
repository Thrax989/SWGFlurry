ring_unarmed = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Unarmeds Wisdom",
	directObjectTemplate = "object/tangible/wearables/ring/aakuan_ring.iff",
	craftingValues = {
	},
	customizationStringNames = {},
	customizationValues = {},
	skillMods = {
		{"unarmed_speed", 25},
		{"unarmed_damage", 25},
		{"unarmed_accuracy", 25},
		{"dodge", 15},
    {"counterattack", 15},
	}
}

addLootItemTemplate("ring_unarmed", ring_unarmed)
