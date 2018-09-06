object_draft_schematic_armor_armor_appearance_rebel_snow_belt = object_draft_schematic_armor_shared_armor_appearance_rebel_snow_belt:new {
 
	templateType = DRAFTSCHEMATIC,

	customObjectName = "Rebel Snow Belt",

 	craftingToolTab = 2, -- (See DraftSchematicObjectTemplate.h)
	complexity = 20, 
	size = 4, 

	xpType = "crafting_clothing_armor", 
	xp = 40, 

	assemblySkill = "armor_assembly", 
	experimentingSkill = "armor_experimentation", 
	customizationSkill = "armor_customization", 

	customizationOptions = {1},
	customizationStringNames = {"/private/index_color_2"},
	customizationDefaults = {82},

	ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_item_ingredients_n"},
	ingredientTitleNames = {"auxilary_coverage", "body", "liner", "wampa_blood"},
	ingredientSlotType = {0, 0, 1, 1},
	resourceTypes = {"metal", "hide", "object/tangible/component/clothing/shared_fiberplast_panel.iff", "object/tangible/component/armor/shared_wampa_blood.iff"},
	resourceQuantities = {15, 4, 1, 1},
	contribution = {100, 100, 100, 0},


	targetTemplate = "object/tangible/wearables/armor/rebel_snow/armor_rebel_snow_belt.iff",

	additionalTemplates = {},
}

ObjectTemplates:addTemplate(object_draft_schematic_armor_armor_appearance_rebel_snow_belt, "object/draft_schematic/armor/armor_appearance_rebel_snow_belt.iff")
