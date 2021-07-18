jedi_rings = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "ring_s01_LST", weight = 4000000}, -- Ring +5 Lightsaber Toughness
		{itemTemplate = "ring_s02_JT", weight = 4000000}, -- Ring +5 Jedi Toughness
		{itemTemplate = "ring_resolve", weight = 1000000}, 
		{itemTemplate = "ring_resistance", weight = 1000000},    
	}
}

addLootGroupTemplate("jedi_rings", jedi_rings)
