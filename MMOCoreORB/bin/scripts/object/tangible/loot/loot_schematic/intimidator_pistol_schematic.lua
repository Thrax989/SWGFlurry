object_tangible_loot_loot_schematic_intimidator_pistol_schematic = object_tangible_loot_loot_schematic_shared_intimidator_pistol_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_weaponsmith_master",
	targetDraftSchematic = "object/draft_schematic/weapon/pistol_intimidator.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_intimidator_pistol_schematic, "object/tangible/loot/loot_schematic/intimidator_pistol_schematic.iff")
