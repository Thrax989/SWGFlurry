object_draft_schematic_weapon_appearance_weapon_appearance_victor_baton_gaderiffi = object_draft_schematic_weapon_appearance_shared_weapon_appearance_victor_baton_gaderiffi:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Voctor Gaderiffi Baton",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 20, 
   size = 3, 

   xpType = "crafting_weapons_general", 
   xp = 110, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"grip_unit", "conductive_strike_face", "power_cell_brackets", "charge_accumulator", "shock_pulsor", "reinforcement_core"},
   ingredientSlotType = {0, 0, 0, 0, 1, 1},
   resourceTypes = {"copper_polysteel", "steel", "metal", "crystalline_byrothsis", "object/tangible/component/item/shared_electronic_power_conditioner.iff", "object/tangible/component/weapon/shared_reinforcement_core.iff"},
   resourceQuantities = {18, 18, 10, 6, 2, 1},
   contribution = {100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/baton/baton_stun.iff",

   additionalTemplates = {
             }

}

ObjectTemplates:addTemplate(object_draft_schematic_weapon_appearance_weapon_appearance_victor_baton_gaderiffi, "object/draft_schematic/weapon/appearance/weapon_appearance_victor_baton_gaderiffi.iff")
