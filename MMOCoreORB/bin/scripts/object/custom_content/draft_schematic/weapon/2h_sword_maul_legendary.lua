object_draft_schematic_weapon_2h_sword_maul_legendary = object_draft_schematic_weapon_shared_2h_sword_maul_legendary:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "A Legendary Power Hammer",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 30,
   size = 4,

   xpType = "crafting_weapons_general",
   xp = 2000,

   assemblySkill = "weapon_assembly",
   experimentingSkill = "weapon_experimentation",
   customizationSkill = "weapon_customization",

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"grip_unit", "reactive_striking_surface", "power_cell_brackets", "reinforcement_core", "extra_reinforcement"},
   ingredientSlotType = {0, 0, 0, 1, 3},
   resourceTypes = {"iron_kammris", "metal", "copper", "object/tangible/component/weapon/shared_reinforcement_core.iff", "object/tangible/component/weapon/shared_reinforcement_core.iff"},
   resourceQuantities = {1500, 800, 480, 2, 1},
   contribution = {100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/2h_sword/2h_sword_maul_legendary.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_2h_sword_maul_legendary, "object/draft_schematic/weapon/2h_sword_maul_legendary.iff")
