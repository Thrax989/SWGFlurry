object_tangible_loot_loot_schematic_heavy_crusader_schematic = object_tangible_loot_loot_schematic_shared_heavy_crusader_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_weaponsmith_master",
	targetDraftSchematic = "object/draft_schematic/weapon/heavy_crusader.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_heavy_crusader_schematic, "object/tangible/loot/loot_schematic/heavy_crusader_schematic.iff")
