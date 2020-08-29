ring_carabine = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Hondos Pulse",
	directObjectTemplate = "object/tangible/wearables/ring/aakuan_ring.iff",
	craftingValues = {
	},
	customizationStringNames = {},
	customizationValues = {},
	skillMods = {
		{"carbine_accuracy", 25},
		{"carbine_hit_while_moving", 25},
		{"carbine_speed", 25},
		{"dodge", 15},
    {"counterattack", 15},
	}
}

addLootItemTemplate("ring_carabine", ring_carabine)
