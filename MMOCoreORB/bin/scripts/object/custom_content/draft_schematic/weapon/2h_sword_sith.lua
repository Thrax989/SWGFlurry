object_draft_schematic_weapon_2h_sword_sith = object_draft_schematic_weapon_shared_2h_sword_sith:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Two-Handed Sith Sword",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 35,
   size = 1,

   xpType = "crafting_weapons_general",
   xp = 280,

   assemblySkill = "weapon_assembly",
   experimentingSkill = "weapon_experimentation",
   customizationSkill = "weapon_customization",

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"sword_core_jacket", "reactive_striking_surface", "power_cell_brackets", "reinforcement_core"},
   ingredientSlotType = {0, 0, 0, 1},
   resourceTypes = {"iron_doonium", "metal", "copper", "object/tangible/component/weapon/shared_reinforcement_core.iff"},
   resourceQuantities = {75, 40, 24, 2},
   contribution = {100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/2h_sword/2h_sword_sith.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_2h_sword_sith, "object/draft_schematic/weapon/2h_sword_sith.iff")
