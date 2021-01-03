--Copyright (C) 2010 <SWGEmu>


--This File is part of Core3.

--This program is free software; you can redistribute 
--it and/or modify it under the terms of the GNU Lesser 
--General Public License as published by the Free Software
--Foundation; either version 2 of the License, 
--or (at your option) any later version.

--This program is distributed in the hope that it will be useful, 
--but WITHOUT ANY WARRANTY; without even the implied warranty of 
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
--See the GNU Lesser General Public License for
--more details.

--You should have received a copy of the GNU Lesser General 
--Public License along with this program; if not, write to
--the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

--Linking Engine3 statically or dynamically with other modules 
--is making a combined work based on Engine3. 
--Thus, the terms and conditions of the GNU Lesser General Public License 
--cover the whole combination.

--In addition, as a special exception, the copyright holders of Engine3 
--give you permission to combine Engine3 program with free software 
--programs or libraries that are released under the GNU LGPL and with 
--code included in the standard release of Core3 under the GNU LGPL 
--license (or modified versions of such code, with unchanged license). 
--You may copy and distribute such a system following the terms of the 
--GNU LGPL for Engine3 and the licenses of the other code concerned, 
--provided that you include the source code of that other code when 
--and as the GNU LGPL requires distribution of source code.

--Note that people who make modified versions of Engine3 are not obligated 
--to grant this special exception for their modified versions; 
--it is their choice whether to do so. The GNU Lesser General Public License 
--gives permission to release a modified version without this exception; 
--this exception also makes it possible to release a modified version 


object_draft_schematic_clothing_clothing_armor_jedi_belt_03 = object_draft_schematic_clothing_shared_clothing_armor_jedi_belt_03:new {

   	templateType = DRAFTSCHEMATIC,

   	customObjectName = "Relic Jedi Belt : Soresu",

   	craftingToolTab = 2, -- (See DraftSchematicObjectTemplate.h)
   	complexity = 20, 
   	size = 1, 
	factoryCrateSize = 0, 
	disableFactoryRun = true,

   	xpType = "crafting_clothing_armor", 
   	xp = 40, 

   	assemblySkill = "armor_assembly", 
   	experimentingSkill = "armor_experimentation", 
   	customizationSkill = "armor_customization", 

   	customizationOptions = {1},
   	customizationStringNames = {"/private/index_color_2"},
   	customizationDefaults = {82},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"primary_pocket", "reinforcement", "strap_pad", "power_cell_socket", "power_cell_brackets", "enhanced_cooling_mechanism", "binding_and_reinforcement", "binding_and_hardware"},
   ingredientSlotType = {0, 1, 1, 1, 1, 1, 3, 3},
   resourceTypes = {"fiberplast", "object/tangible/loot/misc/shared_artifact_rare_s01.iff", "object/tangible/component/clothing/shared_clothing_treatment_crystalline.iff", "object/tangible/furniture/all/frn_all_holocron_cube.iff", "object/tangible/furniture/all/frn_all_holocron_triangle.iff", "object/tangible/furniture/all/frn_all_holocron_dode.iff", "object/tangible/component/clothing/shared_synthetic_cloth.iff", "object/tangible/component/clothing/shared_reinforced_fiber_panels.iff"},
   resourceQuantities = {2000, 1, 1, 1, 1, 1, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100, 100},


   	targetTemplate = "object/tangible/wearables/backpack/padawan_pouch.iff",

	skillMods = {},

   	additionalTemplates = {},
}

ObjectTemplates: addTemplate(object_draft_schematic_clothing_clothing_armor_jedi_belt_03, "object/draft_schematic/clothing/clothing_armor_jedi_belt_03.iff")
