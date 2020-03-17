ring_weapon = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Weapon Maker",
	directObjectTemplate = "object/tangible/wearables/ring/aakuan_ring.iff",
	craftingValues = {
	},
	customizationStringNames = {},
	customizationValues = {},
	skillMods = {
		{"weapon_assembly", 25},
		{"weapon_experimentation", 25},
	}
}

addLootItemTemplate("ring_weapon", ring_weapon)
