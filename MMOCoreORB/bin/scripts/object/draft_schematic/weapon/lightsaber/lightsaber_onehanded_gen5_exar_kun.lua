object_draft_schematic_weapon_lightsaber_lightsaber_onehanded_gen5_exar_kun = object_draft_schematic_weapon_lightsaber_shared_lightsaber_onehanded_gen5_exar_kun:new {

templateType = DRAFTSCHEMATIC,

   customObjectName = "Exar Kun's One Handed Lightsaber",

   craftingToolTab = 2048, -- (See DraftSchematicObjectTemplate.h)
   complexity = 19, 
   size = 1, 

   xpType = "jedi_general", 
   xp = 0, 

   assemblySkill = "jedi_saber_assembly", 
   experimentingSkill = "jedi_saber_experimentation", 
   customizationSkill = "jedi_customization", 
   factoryCrateSize = 0,   

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"emitter_shroud", "primary_crystal", "activator", "handgrip", "focusing_crystals", "power_field_insulator", "energizers", "power_cell_socket", "power_cell_brackets", "enhanced_cooling_mechanism"},
   ingredientSlotType = {0, 1, 0, 0, 1, 0, 0, 1, 1, 1},
   resourceTypes = {"steel_duralloy", "object/tangible/component/weapon/lightsaber/shared_lightsaber_refined_blackwing_pack.iff", "aluminum_titanium", "petrochem_inert_polymer", "object/tangible/component/weapon/lightsaber/shared_lightsaber_refined_blackwing_pack.iff", "gas_inert_culsion", "copper_polysteel", "object/tangible/furniture/all/frn_all_holocron_cube.iff", "object/tangible/furniture/all/frn_all_holocron_triangle.iff", "object/tangible/furniture/all/frn_all_holocron_dode.iff"},
   resourceQuantities = {4000, 1, 2200, 2800, 1, 2800, 2800, 1, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/sword/crafted_saber/sword_lightsaber_onehanded_gen5_exar_kun.iff",

   additionalTemplates = {
                          },
	

}
ObjectTemplates: addTemplate(object_draft_schematic_weapon_lightsaber_lightsaber_onehanded_gen5_exar_kun, "object/draft_schematic/weapon/lightsaber/lightsaber_onehanded_gen5_exar_kun.iff")
