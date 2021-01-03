object_tangible_loot_loot_schematic_schem_padawan_pouch = object_tangible_loot_loot_schematic_shared_schem_padawan_pouch:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_tailor_master",
	targetDraftSchematic = "object/draft_schematic/clothing/clothing_padawan_pouch.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_schem_padawan_pouch, "object/tangible/loot/loot_schematic/schem_padawan_pouch.iff")