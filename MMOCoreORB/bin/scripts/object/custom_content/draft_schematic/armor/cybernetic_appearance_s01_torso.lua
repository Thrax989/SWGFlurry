object_draft_schematic_armor_cybernetic_appearance_s01_torso = object_draft_schematic_armor_shared_cybernetic_appearance_s01_torso:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Armor Chest Plate Torso 01",

   craftingToolTab = 2, -- (See DraftSchematicObjectTemplate.h)
   complexity = 45, 
   size = 4, 

   xpType = "crafting_clothing_armor", 
   xp = 650, 

   assemblySkill = "armor_assembly", 
   experimentingSkill = "armor_experimentation", 
   customizationSkill = "armor_customization", 

   customizationOptions = {2},
   customizationStringNames = {"/private/index_color_1"},
   customizationDefaults = {0},

   ingredientTemplateNames = {"craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_droid_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"primary_frame", "body_shell", "frame", "hardware_and_attachments", "binding_and_reinforcement", "padding", "armor", "load_bearing_harness", "reinforcement"},
   ingredientSlotType = {0, 0, 1, 0, 0, 0, 1, 1, 1},
   resourceTypes = {"steel", "fiberplast", "object/tangible/component/droid/shared_advanced_droid_frame.iff", "aluminum", "copper_beyrllius", "hide_wooly", "object/tangible/component/armor/shared_armor_segment_composite.iff", "object/tangible/component/clothing/shared_synthetic_cloth.iff", "object/tangible/component/clothing/shared_reinforced_fiber_panels.iff"},
   resourceQuantities = {100, 100, 1, 60, 50, 40, 4, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100, 100, 100},


   targetTemplate = "object/tangible/wearables/cybernetic/cybernetic_crafted_s01_torso.iff",

   additionalTemplates = {
              }

}

ObjectTemplates:addTemplate(object_draft_schematic_armor_cybernetic_appearance_s01_torso, "object/draft_schematic/armor/cybernetic_appearance_s01_torso.iff")
