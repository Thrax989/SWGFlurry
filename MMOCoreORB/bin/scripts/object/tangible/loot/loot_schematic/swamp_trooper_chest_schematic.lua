object_tangible_loot_loot_schematic_swamp_trooper_chest_schematic = object_tangible_loot_loot_schematic_shared_swamp_trooper_chest_schematic:new {
	templateType = LOOTSCHEMATIC,
	customName = "Swamp Trooper Armor Chest Plate Schematic",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_armorsmith_master",
	targetDraftSchematic = "object/draft_schematic/armor/armor_swamp_trooper_chest.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_swamp_trooper_chest_schematic, "object/tangible/loot/loot_schematic/swamp_trooper_chest_schematic.iff")
