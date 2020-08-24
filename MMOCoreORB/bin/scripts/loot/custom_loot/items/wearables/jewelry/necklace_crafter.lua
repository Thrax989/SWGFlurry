necklace_crafter = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "The Power of Crafting",
	directObjectTemplate = "object/tangible/wearables/necklace/necklace_ice_pendant.iff",
	craftingValues = {
	},
	customizationStringNames = {},
	customizationValues = {},
	skillMods = {
		{"general_assembly", 25},
		{"general_experimentation", 25},
    {"armor_repair", 25},
    {"clothing_repair", 25},
    {"foraging", 25},
    {"medical_foraging", 25},
    {"surveying", 25},
    {"weapon_repair", 25},
    {"grenade_assembly", 25},
    {"grenade_experimentation", 25},
    {"luck", 25},
	}
}

addLootItemTemplate("necklace_crafter", necklace_crafter)
