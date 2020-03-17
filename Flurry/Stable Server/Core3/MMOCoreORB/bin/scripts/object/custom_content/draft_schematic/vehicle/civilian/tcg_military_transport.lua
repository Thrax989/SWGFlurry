object_draft_schematic_vehicle_civilian_tcg_military_transport = object_draft_schematic_vehicle_civilian_shared_tcg_military_transport:new {
	templateType = DRAFTSCHEMATIC,

	customObjectName = "Military Transport",


--TEMPLATE SCHEMATIC POD************************************************************
	craftingToolTab = 16, -- (See DraftSchematicObjectTemplate.h)
	complexity = 42,
	size = 1,
	factoryCrateSize = 5,

	xpType = "crafting_general",
	xp = 2600,

	assemblySkill = "general_assembly",
	experimentingSkill = "general_experimentation",
	customizationSkill = "vehicle_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n"},
	ingredientTitleNames = {"wiring_harness", "paint", "frame", "body_panel", "veh_autopilot_control_module", "turbine_control"},
	ingredientSlotType = {0, 0, 0, 2, 1, 1},
	resourceTypes = {"copper", "petrochem_inert_polymer", "steel", "object/tangible/component/vehicle/shared_custom_veh_body_panel.iff", "object/tangible/component/vehicle/shared_custom_veh_autopilot_control_module.iff", "object/tangible/component/vehicle/shared_custom_veh_turbine_control_module.iff"},
	resourceQuantities = {4000, 2500, 1200, 10, 1, 2},
	contribution = {100, 100, 100, 100, 100, 100},

--********************************************************************************
	targetTemplate = "object/tangible/deed/vehicle_deed/tcg_military_transport_deed.iff",

	additionalTemplates = {}
}

ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_tcg_military_transport, "object/draft_schematic/vehicle/civilian/tcg_military_transport.iff")
