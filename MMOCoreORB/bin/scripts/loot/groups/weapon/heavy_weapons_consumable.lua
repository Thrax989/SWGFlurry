heavy_weapons_consumable = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "locked_briefcase", weight = 1000000},
		{itemTemplate = "locked_container", weight = 1000000},
		{itemTemplate = "force_color_crystal", weight = 1000000},
		{itemTemplate = "force_power_crystal", weight = 1000000},
		{itemTemplate = "attachment_clothing", weight = 1000000},
		{itemTemplate = "attachment_armor", weight = 1000000},
		{groupTemplate = "lifeday", weight = 1000000},
		{groupTemplate = "armor_all", weight = 1000000},
		{groupTemplate = "outbreak", weight = 1000000},
		{groupTemplate = "wearables_all", weight = 1000000}
	}
}

addLootGroupTemplate("heavy_weapons_consumable", heavy_weapons_consumable)
