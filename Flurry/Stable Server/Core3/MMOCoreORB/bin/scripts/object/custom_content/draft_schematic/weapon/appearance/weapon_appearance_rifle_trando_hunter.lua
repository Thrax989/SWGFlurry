object_draft_schematic_weapon_appearance_weapon_appearance_rifle_trando_hunter = object_draft_schematic_weapon_appearance_shared_weapon_appearance_rifle_trando_hunter:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Trando Hunter Rifle",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 30, 
   size = 4, 

   xpType = "crafting_weapons_general", 
   xp = 650, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"frame_assembly", "receiver_assembly", "grip_assembly", "enhanced_cooling_mechanism", "powerhandler", "thermal_control_unit", "barrel", "stock"},
   ingredientSlotType = {0, 0, 0, 0, 1, 0, 1, 3},
   resourceTypes = {"steel_ditanium", "iron_polonium", "metal", "crystalline_gallinorian", "object/tangible/component/weapon/shared_blaster_power_handler.iff", "ore_carbonate_alantium", "object/tangible/component/weapon/shared_blaster_rifle_barrel.iff", "object/tangible/component/weapon/shared_stock.iff"},
   resourceQuantities = {150, 85, 20, 15, 10, 30, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100, 100},
   ingredientAppearance = {"", "", "", "", "", "", "muzzle", "stock"},


   targetTemplate = "object/weapon/ranged/rifle/ep3/rifle_trando_hunter.iff",

   additionalTemplates = {
             }

}

ObjectTemplates:addTemplate(object_draft_schematic_weapon_appearance_weapon_appearance_rifle_trando_hunter, "object/draft_schematic/weapon/appearance/weapon_appearance_rifle_trando_hunter.iff")
