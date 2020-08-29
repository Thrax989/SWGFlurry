object_draft_schematic_weapon_appearance_weapon_appearance_quest_heavy_acid_beam = object_draft_schematic_weapon_appearance_shared_weapon_appearance_quest_heavy_acid_beam:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Quest Heavy Acid Beam",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 50, 
   size = 4, 

   xpType = "crafting_weapons_general", 
   xp = 770, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_munition_ingredients_n", "craft_munition_ingredients_n", "craft_munition_ingredients_n", "craft_munition_ingredients_n", "craft_munition_ingredients_n"},
   ingredientTitleNames = {"frame_assembly", "receiver_assembly", "grip_assembly", "ignition_pulse_generator", "launch_tubes", "shell_handling_unit", "warheads", "target_tracker"},
   ingredientSlotType = {0, 0, 0, 1, 0, 1, 1, 1},
   resourceTypes = {"iron", "metal", "metal", "object/tangible/component/weapon/shared_blaster_power_handler.iff", "steel", "object/tangible/component/weapon/shared_projectile_feed_mechanism.iff", "object/weapon/ranged/grenade/shared_grenade_proton.iff", "object/tangible/component/weapon/shared_scope_weapon.iff"},
   resourceQuantities = {150, 40, 25, 4, 170, 8, 5, 2},
   contribution = {100, 100, 100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/ranged/heavy/heavy_rocket_launcher.iff",

   additionalTemplates = {
             }

}

ObjectTemplates:addTemplate(object_draft_schematic_weapon_appearance_weapon_appearance_quest_heavy_acid_beam, "object/draft_schematic/weapon/appearance/weapon_appearance_quest_heavy_acid_beam.iff")
