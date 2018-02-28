object_draft_schematic_vehicle_civilian_air2_swoop = object_draft_schematic_vehicle_civilian_shared_air2_swoop:new {
	templateType = DRAFTSCHEMATIC,

	customObjectName = "Air-2 Racing Swoop",

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
	resourceQuantities = {2000, 4200},
	contribution = {100, 100},

	targetTemplate = "object/tangible/deed/vehicle_deed/air2_swoop_deed.iff",

	additionalTemplates = {}
}

ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_air2_swoop, "object/draft_schematic/vehicle/civilian/air2_swoop.iff")
