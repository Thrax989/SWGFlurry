object_draft_schematic_weapon_1h_sword_nyenthioris = object_draft_schematic_weapon_shared_1h_sword_nyenthioris:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Blade of Nyenthi'oris",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 20, 
   size = 4, 

   xpType = "crafting_weapons_general", 
   xp = 90, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 
   factoryCrateSize = 0,

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"sword_core_jacket", "cutting_edge", "grip", "reinforcement_core", "reinforcement_core"},
   ingredientSlotType = {0, 0, 0, 1, 1},
   resourceTypes = {"aluminum_perovskitic", "metal", "copper_platinite", "object/tangible/component/weapon/shared_reinforcement_core.iff", "object/tangible/component/weapon/shared_reinforcement_core.iff"},
   resourceQuantities = {60, 12, 12, 1, 1},
   contribution = {100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/sword/ep3/sword_wookiee.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_1h_sword_nyenthioris, "object/draft_schematic/weapon/1h_sword_nyenthioris.iff")
