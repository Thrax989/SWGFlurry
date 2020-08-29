ring_pistol = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Jangos Luck",
	directObjectTemplate = "object/tangible/wearables/ring/aakuan_ring.iff",
	craftingValues = {
	},
	customizationStringNames = {},
	customizationValues = {},
	skillMods = {
		{"pistol_accuracy", 25},
		{"pistol_hit_while_moving", 25},
		{"pistol_speed", 25},
    {"pistol_accuracy_while_standing", 25},
		{"dodge", 15},
    {"counterattack", 15},
	}
}

addLootItemTemplate("ring_pistol", ring_pistol)
