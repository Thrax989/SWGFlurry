object_tangible_loot_loot_schematic_commando_house_loot_schem = object_tangible_loot_loot_schematic_shared_commando_house_loot_schem:new {
	templateType = LOOTSCHEMATIC,
	customName = "Commando Bunker Schematic",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/structure/commando_house_schem.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_commando_house_loot_schem, "object/tangible/loot/loot_schematic/commando_house_loot_schem.iff")
