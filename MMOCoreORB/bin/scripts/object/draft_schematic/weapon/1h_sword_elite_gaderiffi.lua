object_draft_schematic_weapon_1h_sword_elite_gaderiffi = object_draft_schematic_weapon_shared_1h_sword_elite_gaderiffi:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Elite Gaderiffi Baton",

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
   ingredientTitleNames = {"grip_unit", "reactive_striking_surface", "power_cell_brackets", "reinforcement_core", "reinforcement_core"},
   ingredientSlotType = {0, 0, 0, 1, 1},
   resourceTypes = {"iron", "steel", "metal", "object/tangible/component/weapon/shared_reinforcement_core.iff", "object/tangible/component/weapon/shared_reinforcement_core.iff"},
   resourceQuantities = {60, 12, 12, 1, 1},
   contribution = {100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/baton/baton_gaderiffi_elite.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_1h_sword_elite_gaderiffi, "object/draft_schematic/weapon/1h_sword_elite_gaderiffi.iff")
