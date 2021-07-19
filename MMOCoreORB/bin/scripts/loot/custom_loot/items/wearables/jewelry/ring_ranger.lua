ring_ranger = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Striders Lament",
	directObjectTemplate = "object/tangible/wearables/ring/aakuan_ring.iff",
	craftingValues = {},
	customizationStringNames = {},
	customizationValues = {},
	skillMods = {
		{"creature_harvesting", 25},
		{"creature_hit_bonus", 25},
		{"mask_scent", 25},
		{"camouflage", 25},
		{"trapping", 25},
    		{"luck", 25},
	}
}

addLootItemTemplate("ring_ranger", ring_ranger)
