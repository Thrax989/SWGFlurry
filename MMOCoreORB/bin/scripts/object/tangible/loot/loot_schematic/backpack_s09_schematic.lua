object_tangible_loot_loot_schematic_backpack_s09_schematic = object_tangible_loot_loot_schematic_shared_backpack_s09_schematic:new {
	templateType = LOOTSCHEMATIC,
	customName = "Pilot Ace Field Pack Schematic",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_tailor_master",
	targetDraftSchematic = "object/draft_schematic/clothing/clothing_backpack_s09.iff",
	targetUseCount = 5
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_backpack_s09_schematic, "object/tangible/loot/loot_schematic/backpack_s09_schematic.iff")
