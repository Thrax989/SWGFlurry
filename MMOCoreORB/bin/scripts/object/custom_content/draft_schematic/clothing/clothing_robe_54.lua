object_draft_schematic_clothing_clothing_robe_54 = object_draft_schematic_clothing_shared_clothing_robe_54:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "New Robe 54",

   craftingToolTab = 8, -- (See DraftSchematicObjectTemplate.h)
   complexity = 30, 
   size = 1, 

   xpType = "crafting_clothing_general", 
   xp = 110, 

   assemblySkill = "clothing_assembly", 
   experimentingSkill = "clothing_experimentation", 
   customizationSkill = "clothing_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"primary_pocket", "reinforcement", "strap_pad", "power_cell_socket", "power_cell_brackets", "enhanced_cooling_mechanism"},
   ingredientSlotType = {0, 1, 1, 1, 1, 1},
   resourceTypes = {"fiberplast", "object/tangible/loot/misc/shared_artifact_rare_s01.iff", "object/tangible/component/clothing/shared_leather_heavy_duty.iff", "object/tangible/furniture/all/frn_all_holocron_cube.iff", "object/tangible/furniture/all/frn_all_holocron_triangle.iff", "object/tangible/furniture/all/frn_all_holocron_dode.iff"},
   resourceQuantities = {2000, 1, 1, 1, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100},


   targetTemplate = "object/tangible/wearables/robe/robe_s01.iff",

   additionalTemplates = {
             },
		
	skillMods = {
	}
}

ObjectTemplates:addTemplate(object_draft_schematic_clothing_clothing_robe_54, "object/draft_schematic/clothing/clothing_robe_54.iff")
