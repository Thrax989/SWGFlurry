object_draft_schematic_weapon_lance_magnaguard = object_draft_schematic_weapon_shared_lance_magnaguard:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "MagnaGuard Electrostaff",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 30, 
   size = 4, 

   xpType = "crafting_weapons_general", 
   xp = 220, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 
   factoryCrateSize = 0,
   
   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"lance_shaft", "vibro_unit_and_power_cell_brackets", "grip", "axe_head", "vibration_generator", "vibration_generator"},
   ingredientSlotType = {0, 0, 0, 0, 1, 1},
   resourceTypes = {"aluminum_perovskitic", "iron", "metal", "copper", "object/tangible/component/weapon/shared_vibro_unit.iff",   "object/tangible/component/weapon/shared_vibro_unit.iff"},
   resourceQuantities = {85, 24, 12, 8, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/polearm/lance_staff_magna_guard.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_lance_magnaguard, "object/draft_schematic/weapon/lance_magnaguard.iff")
