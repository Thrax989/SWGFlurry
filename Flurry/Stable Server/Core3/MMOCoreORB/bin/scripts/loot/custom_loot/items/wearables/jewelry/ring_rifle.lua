ring_rifle = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Cad Banes Luck",
	directObjectTemplate = "object/tangible/wearables/ring/aakuan_ring.iff",
	craftingValues = {},
	customizationStringNames = {},
	customizationValues = {},
	skillMods = {
		{"rifle_accuracy", 25},
		{"rifle_hit_while_moving", 25},
		{"rifle_speed", 25},
    {"steadyaim", 25},
		{"dodge", 15},
    {"counterattack", 15},
	}
}

addLootItemTemplate("ring_rifle", ring_rifle)
