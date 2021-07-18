bracelet_rightcrafting = {
  minimumLevel = 0,
  maximumLevel = -1,
  customObjectName = "Bracelet of Force Crafting",
  directObjectTemplate = "object/tangible/wearables/bracelet/bracelet_s06_r.iff",
  craftingValues = {},
  customizationStringNames = {},
  customizationValues = {},
	skillMods = {
		{"force_assembly", 25},
		{"force_experimentation", 25},
		{"jedi_saber_assembly", 25},
		{"jedi_saber_experimentation", 25},
    {"general_assembly", 25},
    {"general_experimentation", 25}   
	}
}
addLootItemTemplate("bracelet_rightcrafting", bracelet_rightcrafting)