object_draft_schematic_weapon_pistol_wookiee = object_draft_schematic_weapon_shared_pistol_wookiee:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "UR-G8 Pistol Schematic",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 30, 
   size = 1, 

   xpType = "crafting_weapons_general", 
   xp = 350, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"frame_assembly", "receiver_assembly", "grip_assembly", "powerhandler", "barrel", "power_supply", "scope"},
   ingredientSlotType = {0, 0, 0, 1, 1, 1, 3},
   resourceTypes = {"aluminum_chromium", "copper_mythra", "aluminum_chromium", "object/tangible/component/weapon/shared_blaster_power_handler.iff", "object/tangible/component/weapon/shared_blaster_pistol_barrel.iff", "object/tangible/component/weapon/shared_geonosian_power_cube_base.iff", "object/tangible/component/weapon/shared_scope_weapon.iff"},
   resourceQuantities = {142, 60, 28, 4, 1, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/ranged/pistol/ep3/pistol_wookiee.iff",

   additionalTemplates = {
             }

}

ObjectTemplates:addTemplate(object_draft_schematic_weapon_pistol_wookiee, "object/draft_schematic/weapon/pistol_wookiee.iff")
