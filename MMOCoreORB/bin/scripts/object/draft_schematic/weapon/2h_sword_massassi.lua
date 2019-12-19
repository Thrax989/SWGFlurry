object_draft_schematic_weapon_2h_sword_massassi = object_draft_schematic_weapon_shared_2h_sword_massassi:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Massassi Enforcer Blade",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 30, 
   size = 4, 

   xpType = "crafting_weapons_general", 
   xp = 280, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 
   factoryCrateSize = 0,
   
   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"sword_core_jacket", "cutting_edge", "grip_unit", "jacketed_sword_core", "jacketed_sword_core"},
   ingredientSlotType = {0, 0, 0, 1, 1},
   resourceTypes = {"steel_duralloy", "aluminum_linksteel", "petrochem_inert_polymer", "object/tangible/component/weapon/shared_sword_core.iff",  "object/tangible/component/weapon/shared_sword_core.iff"},
   resourceQuantities = {120, 85, 60, 1, 1},
   contribution = {100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/2h_sword/2h_sword_kun_massassi.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_2h_sword_massassi, "object/draft_schematic/weapon/2h_sword_massassi.iff")
