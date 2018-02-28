object_draft_schematic_weapon_sword_bandit = object_draft_schematic_weapon_shared_sword_bandit:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Mustafar Bandit Sword Schematic",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 14, 
   size = 2, 

   xpType = "crafting_weapons_general", 
   xp = 90, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"sword_core_jacket", "grip", "jacketed_sword_core"},
   ingredientSlotType = {0, 0, 1},
   resourceTypes = {"steel", "petrochem_inert_polymer", "object/tangible/component/weapon/shared_sword_core.iff"},
   resourceQuantities = {34, 12, 1},
   contribution = {100, 100, 100},


   targetTemplate = "object/weapon/melee/sword/som_sword_mustafar_bandit.iff",

   additionalTemplates = {
             }

}

ObjectTemplates:addTemplate(object_draft_schematic_weapon_sword_bandit, "object/draft_schematic/weapon/sword_bandit.iff")
