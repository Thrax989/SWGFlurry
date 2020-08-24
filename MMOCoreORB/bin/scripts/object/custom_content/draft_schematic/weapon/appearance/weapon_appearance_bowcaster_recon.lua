object_draft_schematic_weapon_appearance_weapon_appearance_bowcaster_recon = object_draft_schematic_weapon_appearance_shared_weapon_appearance_bowcaster_recon:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Bowcaster Recon",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 28, 
   size = 3, 

   xpType = "crafting_weapons_general", 
   xp = 250, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"frame_assembly", "receiver_assembly", "grip_assembly", "powerhandler", "barrel", "cartridge_feed_unit", "scope"},
   ingredientSlotType = {0, 0, 0, 1, 1, 1, 3},
   resourceTypes = {"iron_doonium", "steel_quadranium", "metal", "object/tangible/component/weapon/shared_blaster_power_handler.iff", "object/tangible/component/weapon/shared_blaster_rifle_barrel.iff", "object/tangible/component/weapon/shared_projectile_feed_mechanism.iff", "object/tangible/component/weapon/shared_scope_weapon.iff"},
   resourceQuantities = {70, 40, 15, 3, 1, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/ranged/rifle/rifle_bowcaster.iff",

   additionalTemplates = {
             }

}

ObjectTemplates:addTemplate(object_draft_schematic_weapon_appearance_weapon_appearance_bowcaster_recon, "object/draft_schematic/weapon/appearance/weapon_appearance_bowcaster_recon.iff")
