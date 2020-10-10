object_draft_schematic_weapon_appearance_weapon_appearance_heavy_pulse_cannon = object_draft_schematic_weapon_appearance_shared_weapon_appearance_heavy_pulse_cannon:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Pulse Cannon",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 24, 
   size = 3, 

   xpType = "crafting_weapons_general", 
   xp = 456, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_munition_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"frame_assembly", "receiver_assembly", "grip_assembly", "powerhandler", "barrel", "ignition_pulse_generator", "stock"},
   ingredientSlotType = {0, 0, 0, 1, 1, 0, 3},
   resourceTypes = {"steel", "iron", "metal", "object/tangible/component/weapon/shared_blaster_power_handler.iff", "object/tangible/component/weapon/shared_blaster_rifle_barrel.iff", "fuel_petrochem_liquid", "object/tangible/component/weapon/shared_stock.iff"},
   resourceQuantities = {130, 70, 15, 4, 1, 28, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/ranged/rifle/rifle_pulse_cannon.iff",

   additionalTemplates = {
             }
}

ObjectTemplates:addTemplate(object_draft_schematic_weapon_appearance_weapon_appearance_heavy_pulse_cannon, "object/draft_schematic/weapon/appearance/weapon_appearance_heavy_pulse_cannon.iff")
