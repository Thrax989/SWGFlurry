object_draft_schematic_weapon_lightsaber_lightsaber_onehanded_gen5_jinzu = object_draft_schematic_weapon_lightsaber_shared_lightsaber_onehanded_gen5_jinzu:new {

templateType = DRAFTSCHEMATIC,

   customObjectName = "Jinzu Razor",

   craftingToolTab = 2048, -- (See DraftSchematicObjectTemplate.h)
   complexity = 19, 
   size = 1, 

   xpType = "jedi_general", 
   xp = 0, 

   assemblySkill = "jedi_saber_assembly", 
   experimentingSkill = "jedi_saber_experimentation", 
   customizationSkill = "jedi_customization", 
   factoryCrateSize = 0,   
   disableFactoryRun = true,

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"emitter_shroud", "primary_crystal", "activator", "handgrip", "focusing_crystals", "power_field_insulator", "energizers"},
   ingredientSlotType = {0, 1, 0, 0, 1, 0, 0},
   resourceTypes = {"steel_duralloy", "object/tangible/component/weapon/lightsaber/shared_lightsaber_refined_crystal_pack.iff", "aluminum_titanium", "petrochem_inert_polymer", "object/tangible/component/weapon/lightsaber/shared_lightsaber_refined_crystal_pack.iff", "gas_inert_culsion", "copper_polysteel"},
   resourceQuantities = {40, 1, 22, 28, 1, 28, 28},
   contribution = {100, 100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/sword/crafted_saber/sword_lightsaber_onehanded_gen5_jinzu.iff",

   additionalTemplates = {
                          },
	

}
ObjectTemplates: addTemplate(object_draft_schematic_weapon_lightsaber_lightsaber_onehanded_gen5_jinzu, "object/draft_schematic/weapon/lightsaber/lightsaber_onehanded_gen5_jinzu.iff")