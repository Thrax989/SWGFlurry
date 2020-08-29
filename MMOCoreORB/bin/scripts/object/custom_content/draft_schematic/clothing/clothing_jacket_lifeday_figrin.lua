object_draft_schematic_clothing_clothing_jacket_lifeday_figrin = object_draft_schematic_clothing_shared_clothing_jacket_lifeday_figrin:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Lifeday Jacket Firgrin Dan",

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

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"primary_pocket", "secondary_pocket", "strap_pad", "strap_adjustment", "lightweight_frame", "stabilizer_harness"},
   ingredientSlotType = {0, 0, 1, 0, 0, 0},
   resourceTypes = {"fiberplast", "hide", "object/tangible/component/clothing/shared_leather_heavy_duty.iff", "metal", "aluminum", "petrochem_inert_polymer"},
   resourceQuantities = {20, 10, 1, 5, 15, 5},
   contribution = {100, 100, 100, 100, 100, 100},


   targetTemplate = "object/tangible/wearables/jacket/jacket_lifeday_figrin_dan.iff",

   additionalTemplates = {
             },
		
	skillMods = {	    
		{"resistance_bleeding", 25},
	    {"slope_move", 25},
	    {"melee_defense", 25},
	    {"ranged_defense", 25}
	}
}

ObjectTemplates:addTemplate(object_draft_schematic_clothing_clothing_jacket_lifeday_figrin, "object/draft_schematic/clothing/clothing_jacket_lifeday_figrin.iff")
