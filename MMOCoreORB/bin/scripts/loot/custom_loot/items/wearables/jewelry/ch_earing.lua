ch_earing = {
 -- Band
    minimumLevel = 0,
    maximumLevel = -1,
    customObjectName = "Beast Master",
    directObjectTemplate = "object/tangible/wearables/earring/earring_s01.iff",
    craftingValues = {},
	skillMods = {
		{"tame_level", 25},
		{"keep_creature", 25},
		{"stored_pets", 25},
		{"tame_aggro", 25},
    {"tame_bonus", 25},
    {"tame_non_aggro", 25},
    {"creature_hit_bonus", 25}
	}
}    

addLootItemTemplate("ch_earing", ch_earing)
