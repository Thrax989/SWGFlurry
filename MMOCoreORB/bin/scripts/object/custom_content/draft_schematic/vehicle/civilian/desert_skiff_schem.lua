object_draft_schematic_vehicle_civilian_desert_skiff_schem = object_draft_schematic_vehicle_civilian_shared_desert_skiff_schem:new {
	templateType = DRAFTSCHEMATIC,

	customObjectName = "Desert Skiff",

	craftingToolTab = 16, -- (See DraftSchematicObjectTemplate.h)
	complexity = 25,
	size = 1,
	factoryCrateSize = 1,

	xpType = "crafting_general",
	xp = 1800,

	assemblySkill = "general_assembly",
	experimentingSkill = "general_experimentation",
	customizationSkill = "clothing_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n"},
	ingredientTitleNames = {"vehicle_body", "structural_frame"},
	ingredientSlotType = {0, 0},
	resourceTypes = {"metal_nonferrous", "metal_ferrous"},
	resourceQuantities = {2000, 4200},
	contribution = {100, 100},

	targetTemplate = "object/tangible/deed/vehicle_deed/landspeeder_desert_skiff_deed.iff",

	additionalTemplates = {}
}

ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_desert_skiff_schem, "object/draft_schematic/vehicle/civilian/desert_skiff_schem.iff")
