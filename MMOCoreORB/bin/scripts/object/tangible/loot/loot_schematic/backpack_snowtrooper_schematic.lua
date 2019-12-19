object_tangible_loot_loot_schematic_backpack_snowtrooper_schematic = object_tangible_loot_loot_schematic_shared_backpack_snowtrooper_schematic:new {
	templateType = LOOTSCHEMATIC,
	customName = "Snowtrooper Backpack Schematic",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_armorsmith_master",
	targetDraftSchematic = "object/draft_schematic/armor/backpack_snowtrooper.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_backpack_snowtrooper_schematic, "object/tangible/loot/loot_schematic/backpack_snowtrooper_schematic.iff")
