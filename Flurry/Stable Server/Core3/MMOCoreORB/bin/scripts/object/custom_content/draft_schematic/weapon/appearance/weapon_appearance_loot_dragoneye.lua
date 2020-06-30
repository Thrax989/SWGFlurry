object_draft_schematic_weapon_appearance_weapon_appearance_loot_dragoneye = object_draft_schematic_weapon_appearance_shared_weapon_appearance_loot_dragoneye:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Republic Blaster Pistol",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 32, 
   size = 1, 

   xpType = "crafting_weapons_general", 
   xp = 360, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_item_ingredients_n"},
   ingredientTitleNames = {"frame_assembly", "receiver_assembly", "grip_assembly", "powerhandler", "scope", "inducer", "de10_barrel"},
   ingredientSlotType = {0, 0, 0, 1, 3, 0, 1},
   resourceTypes = {"iron_plumbum", "metal_ferrous", "metal", "object/tangible/component/weapon/shared_blaster_power_handler.iff", "object/tangible/component/weapon/shared_scope_weapon.iff", "copper_diatium", "object/tangible/loot/dungeon/death_watch_bunker/shared_pistol_de10_barrel.iff"},
   resourceQuantities = {35, 18, 7, 2, 1, 10, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/ranged/pistol/pistol_de_10.iff",

   additionalTemplates = {
             }

}

ObjectTemplates:addTemplate(object_draft_schematic_weapon_appearance_weapon_appearance_loot_dragoneye, "object/draft_schematic/weapon/appearance/weapon_appearance_loot_dragoneye.iff")
