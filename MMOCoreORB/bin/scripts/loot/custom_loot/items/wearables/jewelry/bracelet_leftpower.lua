bracelet_leftpower = {
  minimumLevel = 0,
  maximumLevel = -1,
  customObjectName = "Bracelet of Dark Power",
  directObjectTemplate = "object/tangible/wearables/bracelet/bracelet_s06_l.iff",
  craftingValues = {},
  customizationStringNames = {},
  customizationValues = {},
	skillMods = {
		{"forceintimidate_accuracy", 25},
		{"forceknockdown_accuracy", 25},
		{"forcelightning_accuracy", 25},
		{"forceweaken_accuracy", 25},
    {"forcethrow_accuracy", 25},
    {"mindblast_accuracy", 25},
    {"force_choke", 25}    
	}
}

addLootItemTemplate("bracelet_leftpower", bracelet_leftpower)