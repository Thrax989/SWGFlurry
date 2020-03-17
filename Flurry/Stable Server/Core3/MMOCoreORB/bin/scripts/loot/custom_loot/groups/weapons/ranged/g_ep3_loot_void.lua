g_ep3_loot_void = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "ep3_loot_void", weight = 10000000}
	}
}
-- this spawns no items in game
addLootGroupTemplate("g_ep3_loot_void", g_ep3_loot_void)
