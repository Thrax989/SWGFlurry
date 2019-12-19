object_draft_schematic_weapon_knife_naktra_crystal = object_draft_schematic_weapon_shared_knife_naktra_crystal:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Nak'tra Crystal Knife",

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

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_item_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"knife_shaft", "cutting_edge", "grip", "crystal_core", "reinforcement_core"},
   ingredientSlotType = {0, 0, 0, 1, 1},
   resourceTypes = {"iron_kammris", "metal", "aluminum_phrik", "object/tangible/loot/quest/shared_naktra_crystal.iff", "object/tangible/component/weapon/shared_reinforcement_core.iff"},
   resourceQuantities = {60, 12, 12, 1, 1},
   contribution = {100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/knife/ep3/knife_naktra_crystal.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_knife_naktra_crystal, "object/draft_schematic/weapon/knife_naktra_crystal.iff")
