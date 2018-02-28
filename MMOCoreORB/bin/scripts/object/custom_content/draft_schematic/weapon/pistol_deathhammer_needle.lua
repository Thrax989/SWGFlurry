object_draft_schematic_weapon_pistol_deathhammer_needle = object_draft_schematic_weapon_shared_pistol_deathhammer_needle:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Deathhammer Pistol Schematic",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 21, 
   size = 3, 

   xpType = "crafting_weapons_general", 
   xp = 105, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"frame_assembly", "receiver_assembly", "grip_assembly", "powerhandler", "barrel", "scope"},
   ingredientSlotType = {0, 0, 0, 1, 1, 3},
   resourceTypes = {"metal", "metal", "metal", "object/tangible/component/weapon/shared_blaster_power_handler.iff", "object/tangible/component/weapon/shared_blaster_pistol_barrel.iff", "object/tangible/component/weapon/shared_scope_weapon.iff"},
   resourceQuantities = {30, 15, 6, 1, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/ranged/pistol/pistol_deathhammer.iff",

   additionalTemplates = {
             }

}

ObjectTemplates:addTemplate(object_draft_schematic_weapon_pistol_deathhammer_needle, "object/draft_schematic/weapon/pistol_deathhammer_needle.iff")
