ring_medic_second = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Medics Power",
	directObjectTemplate = "object/tangible/wearables/ring/aakuan_ring.iff",
	craftingValues = {
	},
	customizationStringNames = {},
	customizationValues = {},
	skillMods = {
		{"healing_wound_treatment", 25},
		{"healing_wound_speed", 25},
    {"healing_range_speed", 25},
    {"healing_range", 25},
    {"healing_injury_treatment", 25},
    {"healing_injury_speed", 25},
    {"healing_ability", 25},
    {"combat_healing_ability", 25},
    {"combat_medic_effectiveness", 25},
	}
}

addLootItemTemplate("ring_medic_second", ring_medic_second)
