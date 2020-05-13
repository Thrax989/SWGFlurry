object_draft_schematic_vehicle_civilian_a1_deluxe_floater = object_draft_schematic_vehicle_civilian_shared_a1_deluxe_floater:new {
	templateType = DRAFTSCHEMATIC,

	customObjectName = "A1 Deluxe Floater",

--TEMPLATE SCHEMATIC Small no color************************************************************
	craftingToolTab = 16, -- (See DraftSchematicObjectTemplate.h)
	complexity = 25,
	size = 1,
	factoryCrateSize = 5,

	xpType = "crafting_general",
	xp = 1800,

	assemblySkill = "general_assembly",
	experimentingSkill = "general_experimentation",
	customizationSkill = "vehicle_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n"},
	ingredientTitleNames = {"wiring_harness", "paint", "frame", "body_panel", "engine_casing", "turbine_control"},
	ingredientSlotType = {0, 0, 0, 2, 1, 1},
	resourceTypes = {"copper", "chemical", "steel", "object/tangible/component/vehicle/shared_custom_veh_body_panel.iff", "object/tangible/component/vehicle/shared_custom_veh_engine_casing.iff", "object/tangible/component/vehicle/shared_custom_veh_turbine_control_module.iff"},
	resourceQuantities = {100, 200, 200, 10, 1, 1},
	contribution = {100, 100, 100, 100, 100, 100},

--********************************************************************************


	targetTemplate = "object/tangible/deed/vehicle_deed/a1_deluxe_floater_deed.iff",

	additionalTemplates = {}
}

ObjectTemplates: addTemplate(object_draft_schematic_vehicle_civilian_a1_deluxe_floater, "object/draft_schematic/vehicle/civilian/a1_deluxe_floater.iff")
