object_draft_schematic_weapon_rifle_geo = object_draft_schematic_weapon_shared_rifle_geo:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Geonosian Drill Rifle",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 17, 
   size = 2, 

   xpType = "crafting_weapons_general", 
   xp = 230, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 
   factoryCrateSize = 0,

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"frame_assembly", "receiver_assembly", "grip_assembly", "powerhandler", "scope", "scope", "power_supply"},
   ingredientSlotType = {0, 0, 0, 1, 1, 3, 1},
   resourceTypes = {"aluminum_linksteel", "steel", "petrochem_inert_polymer", "object/tangible/component/weapon/shared_blaster_power_handler.iff", "object/tangible/component/weapon/shared_scope_weapon.iff",   "object/tangible/component/weapon/shared_scope_weapon.iff", "object/tangible/component/weapon/shared_geonosian_power_cube_base.iff"},
   resourceQuantities = {130, 70, 28, 5, 1, 1,  1},
   contribution = {100, 100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/ranged/rifle/rifle_geo_drill.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_rifle_geo, "object/draft_schematic/weapon/rifle_geo.iff")
