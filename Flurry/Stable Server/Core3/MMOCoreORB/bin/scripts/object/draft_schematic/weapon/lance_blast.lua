object_draft_schematic_weapon_lance_blast = object_draft_schematic_weapon_shared_lance_blast:new {

templateType = DRAFTSCHEMATIC,

   customObjectName = "Lanvarok Blast Polearm",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 30, 
   size = 4, 

   xpType = "crafting_weapons_general", 
   xp = 130, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"lance_shaft", "vibro_unit_and_power_cell_brackets", "grip", "vibration_generator"},
   ingredientSlotType = {0, 0, 0, 1},
   resourceTypes = {"steel_ditanium", "copper_polysteel", "metal", "object/tangible/component/weapon/shared_vibro_unit.iff"},
   resourceQuantities = {38, 17, 6, 2},
   contribution = {100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/polearm/lance_blast.iff",

   additionalTemplates = {
             }
}
ObjectTemplates: addTemplate(object_draft_schematic_weapon_lance_blast, "object/draft_schematic/weapon/lance_blast.iff")