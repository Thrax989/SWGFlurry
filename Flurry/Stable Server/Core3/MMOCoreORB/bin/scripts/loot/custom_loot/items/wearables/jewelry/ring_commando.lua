ring_commando = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Generals Royal Ring",
	directObjectTemplate = "object/tangible/wearables/ring/aakuan_ring.iff",
	craftingValues = {
	},
	customizationStringNames = {},
	customizationValues = {},
	skillMods = {
		{"heavy_flame_thrower_speed", 25},
		{"heavy_flame_thrower_accuracy", 25},
    {"heavy_rifle_lightning_speed", 25},
    {"heavy_rifle_lightning_accuracy", 25},
		{"dodge", 15},
    {"block", 15},
    {"counterattack", 15},
	}
}

addLootItemTemplate("ring_commando", ring_commando)
