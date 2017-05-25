cyberhand_comm = {
    minimumLevel = 0,
    maximumLevel = -1,
    customObjectName = "Cybernetic Combat Medic Hand",
    directObjectTemplate = "object/tangible/wearables/cyborg/hand_r_s01.iff",
    craftingValues = {},
    customizationStringNames = {},
	customizationValues = {},
	skillMods = {
	    {"combat_medicine_assembly", 25},
		{"combat_medicine_experimentation", 25},
		{"force_assembly", 25},
		{"force_experimentation", 25},
	}
}

addLootItemTemplate("cyberhand_comm", cyberhand_comm)