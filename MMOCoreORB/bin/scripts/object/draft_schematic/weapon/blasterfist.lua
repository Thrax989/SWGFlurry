object_draft_schematic_weapon_blasterfist = object_draft_schematic_weapon_shared_blasterfist:new {
templateType = DRAFTSCHEMATIC,

   customObjectName = "Blasterfist",
   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 25, 
   size = 2, 

   xpType = "crafting_weapons_general", 
   xp = 65, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
<<<<<<< HEAD
   ingredientTitleNames = {"grip_unit", "strike_face", "vibro_unit_and_power_cell_brackets", "power_cell_socket", "vibration_generator"},
   ingredientSlotType = {0, 0, 0, 0, 1},
   resourceTypes = {"metal_ferrous", "steel", "metal", "copper", "object/tangible/component/weapon/shared_vibro_unit.iff"},
   resourceQuantities = {12, 8, 8, 4, 1},
=======
   ingredientTitleNames = {"grip_unit", "strike_face", "power_feed_module", "power_cell_socket", "vibration_generator"},
   ingredientSlotType = {0, 0, 1, 0, 1},
   resourceTypes = {"metal_ferrous", "steel", "object/tangible/component/weapon/shared_blaster_power_handler.iff", "copper", "object/tangible/component/weapon/shared_vibro_unit.iff"},
   resourceQuantities = {12, 8, 1, 4, 1},
>>>>>>> parent of 4ec9268f1... Blasterfist reversion
   contribution = {100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/special/blasterfist.iff",

   additionalTemplates = {
             }


}
ObjectTemplates: addTemplate(object_draft_schematic_weapon_blasterfist, "object/draft_schematic/weapon/blasterfist.iff")
