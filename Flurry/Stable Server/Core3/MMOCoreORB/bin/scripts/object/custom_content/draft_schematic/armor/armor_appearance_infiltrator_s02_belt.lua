object_draft_schematic_armor_armor_appearance_infiltrator_s02_belt = object_draft_schematic_armor_shared_armor_appearance_infiltrator_s02_belt:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Armor Belt",

   craftingToolTab = 2, -- (See DraftSchematicObjectTemplate.h)
   complexity = 20, 
   size = 4, 

   xpType = "crafting_clothing_armor", 
   xp = 40, 

   assemblySkill = "armor_assembly", 
   experimentingSkill = "armor_experimentation", 
   customizationSkill = "armor_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"auxilary_coverage", "body", "liner"},
   ingredientSlotType = {0, 0, 1},
   resourceTypes = {"metal", "hide", "object/tangible/component/clothing/shared_fiberplast_panel.iff"},
   resourceQuantities = {15, 4, 1},
   contribution = {100, 100, 100},


   targetTemplate = "object/tangible/wearables/armor/infiltrator/armor_infiltrator_s02_belt.iff",

   additionalTemplates = {
             }

}

ObjectTemplates:addTemplate(object_draft_schematic_armor_armor_appearance_infiltrator_s02_belt, "object/draft_schematic/armor/armor_appearance_infiltrator_s02_belt.iff")
