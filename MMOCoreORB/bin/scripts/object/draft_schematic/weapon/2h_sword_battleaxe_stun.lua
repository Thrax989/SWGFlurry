object_draft_schematic_weapon_2h_sword_battleaxe_stun = object_draft_schematic_weapon_shared_2h_sword_battleaxe_stun:new {

templateType = DRAFTSCHEMATIC,

   customObjectName = "Sikurdian Battle-axe",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 20, 
   size = 4, 

   xpType = "crafting_weapons_general", 
   xp = 135, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"axe_head", "shaft", "axe_head_fastener", "reinforcement_core"},
   ingredientSlotType = {0, 0, 0, 1},
   resourceTypes = {"iron", "wood", "steel", "object/tangible/component/weapon/shared_reinforcement_core.iff"},
   resourceQuantities = {35, 25, 8, 1},
   contribution = {100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/2h_sword/2h_sword_battleaxe_stun.iff",

   additionalTemplates = {
             }
}
ObjectTemplates: addTemplate(object_draft_schematic_weapon_2h_sword_battleaxe_stun, "object/draft_schematic/weapon/2h_sword_battleaxe_stun.iff")