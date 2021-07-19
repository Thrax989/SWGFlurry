jedi_bracelets = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "bracelet_s06_l_LST", weight = 4000000}, -- Bracelet +5 Lightsaber Toughness
		{itemTemplate = "bracelet_s06_r_JT", weight = 4000000}, -- Bracelet +5 Jedi Toughness
		{itemTemplate = "bracelet_leftpower", weight = 1000000}, 
		{itemTemplate = "bracelet_rightcrafting", weight = 1000000},   
	}
}

addLootGroupTemplate("jedi_bracelets", jedi_bracelets)
