object_draft_schematic_clothing_clothing_robe_24 = object_draft_schematic_clothing_shared_clothing_robe_24:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "New Robe 24",

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


   targetTemplate = "object/tangible/wearables/robe/robe_jedi_grey_s02.iff",

   additionalTemplates = {
             },
		
	skillMods = {
	}
}

ObjectTemplates:addTemplate(object_draft_schematic_clothing_clothing_robe_24, "object/draft_schematic/clothing/clothing_robe_24.iff")
