object_draft_schematic_weapon_1h_sword_sinew_knife = object_draft_schematic_weapon_shared_1h_sword_sinew_knife:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Sinew Wrapped Knife",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 35, 
   size = 1, 

   xpType = "crafting_weapons_general", 
   xp = 80, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 
   factoryCrateSize = 0,
   
   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"sword_core_jacket", "cutting_edge", "grip", "knife_shaft", "vibration_generator", "vibration_generator"},
   ingredientSlotType = {0, 0, 0, 0, 1, 1},
   resourceTypes = {"steel", "iron", "metal", "copper", "object/tangible/component/weapon/shared_vibro_unit.iff",  "object/tangible/component/weapon/shared_vibro_unit.iff"},
   resourceQuantities = {60, 10, 12, 12, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/knife/ep3/knife_trando_skinner.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_1h_sword_sinew_knife, "object/draft_schematic/weapon/1h_sword_sinew_knife.iff")
