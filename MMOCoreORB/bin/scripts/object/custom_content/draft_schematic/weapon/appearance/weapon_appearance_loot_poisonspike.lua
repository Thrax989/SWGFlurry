object_draft_schematic_weapon_appearance_weapon_appearance_loot_poisonspike = object_draft_schematic_weapon_appearance_shared_weapon_appearance_loot_poisonspike:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Poisonspike Polearm",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 30, 
   size = 4, 

   xpType = "crafting_weapons_general", 
   xp = 220, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"lance_shaft", "vibro_unit_and_power_cell_brackets", "grip", "vibration_generator", "axe_head"},
   ingredientSlotType = {0, 0, 0, 1, 0},
   resourceTypes = {"steel_ditanium", "copper", "metal_nonferrous", "object/tangible/component/weapon/shared_vibro_unit.iff", "steel_duralloy"},
   resourceQuantities = {55, 25, 15, 3, 15},
   contribution = {100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/polearm/ep3_loot_poisonspike.iff",

   additionalTemplates = {
             }

}

ObjectTemplates:addTemplate(object_draft_schematic_weapon_appearance_weapon_appearance_loot_poisonspike, "object/draft_schematic/weapon/appearance/weapon_appearance_loot_poisonspike.iff")
