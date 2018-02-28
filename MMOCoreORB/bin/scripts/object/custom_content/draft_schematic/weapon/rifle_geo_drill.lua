object_draft_schematic_weapon_rifle_geo_drill = object_draft_schematic_weapon_shared_rifle_geo_drill:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Geonosian Drill Schematic",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 28, 
   size = 1, 

   xpType = "crafting_weapons_general", 
   xp = 150, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"frame_assembly", "receiver_assembly", "grip_assembly", "powerhandler", "barrel", "power_supply", "scope", "stock"},
   ingredientSlotType = {0, 0, 0, 1, 1, 1, 3, 3},
   resourceTypes = {"aluminum_titanium", "copper_platinite", "aluminum_duralumin", "object/tangible/component/weapon/shared_blaster_power_handler.iff", "object/tangible/component/weapon/shared_blaster_rifle_barrel.iff", "object/tangible/component/weapon/shared_geonosian_power_cube_base.iff", "object/tangible/component/weapon/shared_scope_weapon.iff", "object/tangible/component/weapon/shared_stock.iff"},
   resourceQuantities = {100, 40, 15, 5, 1, 2, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100, 100},
   ingredientAppearance = {"", "", "", "", "muzzle", "", "", ""},


   targetTemplate = "object/weapon/ranged/rifle/rifle_geo_drill.iff",

   additionalTemplates = {

             }

}

ObjectTemplates:addTemplate(object_draft_schematic_weapon_rifle_geo_drill, "object/draft_schematic/weapon/rifle_geo_drill.iff")
