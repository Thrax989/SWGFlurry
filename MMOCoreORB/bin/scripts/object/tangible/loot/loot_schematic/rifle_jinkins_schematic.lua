object_tangible_loot_loot_schematic_rifle_jinkins_schematic = object_tangible_loot_loot_schematic_shared_rifle_jinkins_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_weaponsmith_master",
	targetDraftSchematic = "object/draft_schematic/weapon/rifle_jinkins.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_rifle_jinkins_schematic, "object/tangible/loot/loot_schematic/rifle_jinkins_schematic.iff")
