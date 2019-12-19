object_draft_schematic_weapon_carbine_kalranoos = object_draft_schematic_weapon_shared_carbine_kalranoos:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Kalranoos Carbine",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 22, 
   size = 3, 

   xpType = "crafting_weapons_general", 
   xp = 170, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 
   factoryCrateSize = 0,

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n",  "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"frame_assembly", "receiver_assembly", "grip_assembly", "powerhandler", "scope", "scope", "power_supply"},
   ingredientSlotType = {0, 0, 0, 1, 1, 3, 1},
   resourceTypes = {"steel_quadranium", "aluminum_linksteel", "petrochem_inert_polymer", "object/tangible/component/weapon/shared_blaster_power_handler.iff", "object/tangible/component/weapon/shared_scope_weapon.iff", "object/tangible/component/weapon/shared_scope_weapon.iff", "object/tangible/component/weapon/shared_geonosian_power_cube_base.iff"},
   resourceQuantities = {100, 45, 28, 3, 1, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100},

   targetTemplate = "object/weapon/ranged/carbine/carbine_geo.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_carbine_kalranoos, "object/draft_schematic/weapon/carbine_kalranoos.iff")
