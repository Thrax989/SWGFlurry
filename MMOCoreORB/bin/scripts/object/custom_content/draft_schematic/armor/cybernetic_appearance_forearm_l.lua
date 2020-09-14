object_draft_schematic_armor_cybernetic_appearance_forearm_l = object_draft_schematic_armor_shared_cybernetic_appearance_forearm_l:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Armor Left ForeArm 01",

   craftingToolTab = 2, -- (See DraftSchematicObjectTemplate.h)
   complexity = 45, 
   size = 4, 

	xpType = "crafting_droid_general",
	xp = 100,

	assemblySkill = "droid_assembly",
	experimentingSkill = "droid_experimentation",
	customizationSkill = "droid_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n"},
	ingredientTitleNames = {"primary_frame", "reinforcement", "droid_brain", "manipulator_arm", "motivator", "sensor_suite", "general_droid_module", "general_droid_module2", "droid_defensive_module"},
	ingredientSlotType = {0, 1, 1, 1, 1, 1, 3, 3, 3},
	resourceTypes = {"aluminum", "object/tangible/loot/misc/shared_artifact_rare_s01.iff", "object/tangible/component/droid/shared_droid_brain_advanced.iff", "object/tangible/component/droid/shared_manipulator_arm_package_set.iff", "object/tangible/component/droid/shared_droid_motive_system_advanced.iff", "object/tangible/component/droid/shared_sensor_package_droid.iff", "object/tangible/component/droid/shared_droid_service_module_base.iff", "object/tangible/component/droid/shared_droid_service_module_base.iff", "object/tangible/component/droid/shared_defensive_module_base.iff"},
	resourceQuantities = {3000, 1, 1, 1, 1, 1, 1, 1, 1},
	contribution = {100, 100, 100, 100, 100, 100, 100, 100, 100},


   targetTemplate = "object/tangible/wearables/cybernetic/cybernetic_crafted_forearm_l_01.iff",

   additionalTemplates = {
              }

}

ObjectTemplates:addTemplate(object_draft_schematic_armor_cybernetic_appearance_forearm_l, "object/draft_schematic/armor/cybernetic_appearance_forearm_l.iff")
