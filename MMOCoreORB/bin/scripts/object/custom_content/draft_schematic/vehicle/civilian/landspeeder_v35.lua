object_draft_schematic_vehicle_civilian_landspeeder_v35 = object_draft_schematic_vehicle_civilian_shared_landspeeder_v35:new {
	templateType = DRAFTSCHEMATIC,

	customObjectName = "V-35 Landspeeder",

	craftingToolTab = 16, -- (See DraftSchematicObjectTemplate.h)
	complexity = 25,
	size = 1,
	factoryCrateSize = 50,

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
	resourceQuantities = {2150, 5150},
	contribution = {100, 100},

	targetTemplate = "object/tangible/deed/vehicle_deed/landspeeder_v35_deed.iff",

	additionalTemplates = {}
}

ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_landspeeder_v35, "object/draft_schematic/vehicle/civilian/landspeeder_v35.iff")
