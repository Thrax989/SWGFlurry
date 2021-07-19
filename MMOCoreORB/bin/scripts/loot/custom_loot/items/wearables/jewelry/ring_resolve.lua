ring_resolve = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Colossal Resolve",
	directObjectTemplate = "object/tangible/wearables/ring/aakuan_ring.iff",
	craftingValues = {},
	customizationStringNames = {},
	customizationValues = {},
	skillMods = {
		{"melee_defense", 25},
		{"ranged_defense", 25},
		{"posture_change_down_defense", 25},
		{"posture_change_up_defense", 25},
		{"intimidate_defense", 25},    
    {"knockdown_defense", 25}
	}
}

addLootItemTemplate("ring_resolve", ring_resolve)