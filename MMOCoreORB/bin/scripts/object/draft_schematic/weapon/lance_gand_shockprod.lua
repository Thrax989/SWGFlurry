object_draft_schematic_weapon_lance_gand_shockprod = object_draft_schematic_weapon_shared_lance_gand_shockprod:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Gand Shockprod Staff",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 35, 
   size = 1, 

   xpType = "crafting_weapons_general", 
   xp = 250, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 
   factoryCrateSize = 0,
   
   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"lance_shaft", "vibro_unit_and_power_cell_brackets", "grip", "vibration_generator",  "vibration_generator"},
   ingredientSlotType = {0, 0, 0, 1, 1},
   resourceTypes = {"steel_duralloy", "iron", "metal","object/tangible/component/weapon/shared_vibro_unit.iff",    "object/tangible/component/weapon/shared_vibro_unit.iff"},
   resourceQuantities = {85, 24, 20, 1, 1},
   contribution = {100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/polearm/lance_gcw_gand_shockprod.iff",

   additionalTemplates = {
             },
}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_lance_gand_shockprod, "object/draft_schematic/weapon/lance_gand_shockprod.iff")
