ring_entertainer= {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Entertainers Power",
	directObjectTemplate = "object/tangible/wearables/ring/aakuan_ring.iff",
	craftingValues = {
	},
	customizationStringNames = {},
	customizationValues = {},
	skillMods = {
		{"healing_dance_mind", 25},
		{"healing_dance_shock", 25},
		{"healing_dance_wound", 25},
		{"healing_music_mind", 25},
    {"healing_music_shock", 25},
    {"healing_music_wound", 25},
	}
}

addLootItemTemplate("ring_entertainer", ring_entertainer)
