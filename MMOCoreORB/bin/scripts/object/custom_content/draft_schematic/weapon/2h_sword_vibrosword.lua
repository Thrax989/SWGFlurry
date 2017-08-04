object_draft_schematic_weapon_2h_sword_vibrosword = object_draft_schematic_weapon_shared_2h_sword_vibrosword:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Vibrosword",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 30,
   size = 4,

   xpType = "crafting_weapons_general",
   xp = 300,

   assemblySkill = "weapon_assembly",
   experimentingSkill = "weapon_experimentation",
   customizationSkill = "weapon_customization",

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"vibro_unit_and_power_cell_brackets", "sword_base", "vibration_generator"},
   ingredientSlotType = {0, 0, 1},
   resourceTypes = {"metal_ferrous", "copper", "object/tangible/component/weapon/shared_vibro_unit.iff"},
   resourceQuantities = {70, 50, 3},
   contribution = {100, 100, 100},


   targetTemplate = "object/weapon/melee/2h_sword/2h_sword_pvp_bf_01.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_2h_sword_vibrosword, "object/draft_schematic/weapon/2h_sword_vibrosword")
