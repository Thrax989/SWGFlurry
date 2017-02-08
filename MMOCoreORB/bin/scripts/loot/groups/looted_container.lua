looted_container = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		-- 1 loot group to roll on all the items
		{groupTemplate = "wearables_all", weight = 10000000},
	}
}

addLootGroupTemplate("looted_container", looted_container)