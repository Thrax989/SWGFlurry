ring_polearm = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Pikes Weeding",
	directObjectTemplate = "object/tangible/wearables/ring/aakuan_ring.iff",
	craftingValues = {
	},
	customizationStringNames = {},
	customizationValues = {},
	skillMods = {
		{"polearm_accuracy", 25},
		{"polearm_speed", 25},
		{"block", 15},
		{"dodge", 15},
    {"counterattack", 15},
	}
}

addLootItemTemplate("ring_polearm", ring_polearm)
