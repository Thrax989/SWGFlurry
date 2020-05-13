ring_onehand = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Onehands Swiftness",
	directObjectTemplate = "object/tangible/wearables/ring/aakuan_ring.iff",
	craftingValues = {
	},
	customizationStringNames = {},
	customizationValues = {},
	skillMods = {
		{"onehandmelee_accuracy", 25},
		{"onehandmelee_damage", 25},
		{"onehandmelee_speed", 25},
		{"dodge", 15},
    {"counterattack", 15},
	}
}

addLootItemTemplate("ring_onehand", ring_onehand)
