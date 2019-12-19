object_tangible_loot_loot_schematic_1h_sword_nova_schematic = object_tangible_loot_loot_schematic_shared_1h_sword_nova_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_weaponsmith_master",
	targetDraftSchematic = "object/draft_schematic/weapon/1h_sword_nova.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_1h_sword_nova_schematic, "object/tangible/loot/loot_schematic/1h_sword_nova_schematic.iff")
