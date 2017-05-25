cyberhand_weap = {
    minimumLevel = 0,
    maximumLevel = -1,
    customObjectName = "Cybernetic Weaponsmith Hand",
    directObjectTemplate = "object/tangible/wearables/cyborg/hand_r_s01.iff",
    craftingValues = {},
    customizationStringNames = {},
	customizationValues = {},
	skillMods = {
	    {"weapon_assembly", 25},
		{"weapon_experimentation", 25},
		{"weapon_repair", 25},
		{"force_assembly", 25},
		{"force_experimentation", 25},
		{"force_repair_bonus", 25},
	}
}

addLootItemTemplate("cyberhand_weap", cyberhand_weap)