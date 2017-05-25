cyberhand_bioe = {
    minimumLevel = 0,
    maximumLevel = -1,
    customObjectName = "Cybernetic Bio-Engineer Hand",
    directObjectTemplate = "object/tangible/wearables/cyborg/hand_r_s01.iff",
    craftingValues = {},
    customizationStringNames = {},
	customizationValues = {},
	skillMods = {
	    {"bio_engineer_assembly", 25},
		{"bio_engineer_experimentation", 25},
		{"dna_harvesting", 25},
		{"force_assembly", 25},
		{"force_experimentation", 25},
	}
}

addLootItemTemplate("cyberhand_bioe", cyberhand_bioe)