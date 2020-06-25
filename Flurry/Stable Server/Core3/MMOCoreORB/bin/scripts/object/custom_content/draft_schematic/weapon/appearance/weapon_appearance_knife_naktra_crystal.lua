object_draft_schematic_weapon_appearance_weapon_appearance_knife_naktra_crystal = object_draft_schematic_weapon_appearance_shared_weapon_appearance_knife_naktra_crystal:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Naktra Crystal Blade",

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

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"sword_core_jacket", "grip", "jacketed_sword_core"},
   ingredientSlotType = {0, 0, 1},
   resourceTypes = {"iron", "petrochem_inert_polymer", "object/tangible/component/weapon/shared_sword_core.iff"},
   resourceQuantities = {42, 12, 1},
   contribution = {100, 100, 100},


   targetTemplate = "object/weapon/melee/sword/sword_blade_ryyk.iff",

   additionalTemplates = {
             }

}

ObjectTemplates:addTemplate(object_draft_schematic_weapon_appearance_weapon_appearance_knife_naktra_crystal, "object/draft_schematic/weapon/appearance/weapon_appearance_knife_naktra_crystal.iff")
