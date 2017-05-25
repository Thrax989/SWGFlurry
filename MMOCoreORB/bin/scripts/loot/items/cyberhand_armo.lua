cyberhand_armo = {
    minimumLevel = 0,
    maximumLevel = -1,
    customObjectName = "Cybernetic Armorsmith Hand",
    directObjectTemplate = "object/tangible/wearables/cyborg/hand_r_s01.iff",
    craftingValues = {},
    customizationStringNames = {},
	customizationValues = {},
	skillMods = {
	    {"armor_assembly", 25},
		{"armor_experimentation", 25},
		{"armor_repair", 25},
		{"force_assembly", 25},
		{"force_experimentation", 25},
		{"force_repair_bonus", 25},
	}
}

addLootItemTemplate("cyberhand_armo", cyberhand_armo)