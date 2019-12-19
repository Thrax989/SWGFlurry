object_tangible_loot_loot_schematic_pistol_trando_schematic = object_tangible_loot_loot_schematic_shared_pistol_trando_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_weaponsmith_master",
	targetDraftSchematic = "object/draft_schematic/weapon/pistol_trando.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_pistol_trando_schematic, "object/tangible/loot/loot_schematic/pistol_trando_schematic.iff")
