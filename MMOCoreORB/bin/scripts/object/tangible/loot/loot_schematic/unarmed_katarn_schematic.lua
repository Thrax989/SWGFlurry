object_tangible_loot_loot_schematic_unarmed_katarn_schematic = object_tangible_loot_loot_schematic_shared_unarmed_katarn_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_weaponsmith_master",
	targetDraftSchematic = "object/draft_schematic/weapon/unarmed_katarn.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_unarmed_katarn_schematic, "object/tangible/loot/loot_schematic/unarmed_katarn_schematic.iff")
