object_tangible_loot_loot_schematic_lance_shock_schematic = object_tangible_loot_loot_schematic_shared_lance_shock_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_weaponsmith_master",
	targetDraftSchematic = "object/draft_schematic/weapon/lance_shock.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_lance_shock_schematic, "object/tangible/loot/loot_schematic/lance_shock_schematic.iff")
