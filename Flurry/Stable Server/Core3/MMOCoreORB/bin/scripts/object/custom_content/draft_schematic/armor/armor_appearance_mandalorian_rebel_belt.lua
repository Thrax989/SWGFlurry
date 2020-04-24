object_draft_schematic_armor_armor_appearance_mandalorian_rebel_belt = object_draft_schematic_armor_shared_armor_appearance_mandalorian_rebel_belt:new {

   customObjectName = "Armor Belt",

   craftingToolTab = 2, -- (See DraftSchemticImplementation.h)
   complexity = 40, 
   size = 4, 

   xpType = "crafting_clothing_armor", 
   xp = 80, 

   assemblySkill = "armor_assembly", 
   experimentingSkill = "armor_experimentation", 
   customizationSkill = "armor_customization", 
   disableFactoryRun = true,

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"auxilary_coverage", "body", "liner", "hardware_and_attachments", "binding_and_reinforcement", "padding", "armor", "load_bearing_harness", "reinforcement"},
   ingredientSlotType = {0, 0, 0, 0, 0, 0, 1, 1, 1},
   resourceTypes = {"hide_leathery_lok", "hide_scaley", "fiberplast_corellia", "metal", "petrochem_inert_polymer", "hide_wooly", "object/tangible/component/armor/armor_segment_ris_acklay.iff", "object/tangible/component/clothing/shared_synthetic_cloth.iff", "object/tangible/component/clothing/shared_reinforced_fiber_panels.iff"},
   resourceQuantities = {10, 10, 5, 5, 3, 2, 1, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100, 100, 100},


   targetTemplate = "",

   additionalTemplates = {
             }

}

ObjectTemplates:addTemplate(object_draft_schematic_armor_armor_appearance_mandalorian_rebel_belt, "object/draft_schematic/armor/armor_appearance_mandalorian_rebel_belt.iff")
