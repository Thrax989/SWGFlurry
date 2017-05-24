freedom_mandoviol = {
    minimumLevel = 0,
    maximumLevel = -1,
    customObjectName = "Mandoviol of Freedom",
    directObjectTemplate = "object/tangible/instrument/mandoviol.iff",
    craftingValues = {},
	skillMods = {
	    {"private_buff_mind", 100},
		{"private_med_wound_mind", 15},
		{"private_med_battle_fatigue", 15},
	}
}

addLootItemTemplate("freedom_mandoviol", freedom_mandoviol)