--Copyright (C) 2010 <SWGEmu>


--This File is part of Core3.



object_tangible_beta_beta_terminal_wound = object_tangible_beta_shared_beta_terminal_wound:new {
	gameObjectType = 16400,

	maxCondition = 0,


	templateType = CHARACTERBUILDERTERMINAL,

     suiBoxTitle = "Medical Services", 
     suiBoxText = "Welcome Citizen! Please enjoy these helpful medical services.",


	itemList = {
			--"Buff Character", "enhance_character",
			"Cleanse Character", "cleanse_character",
			"Warning Reset Buffs", "reset_buffs",
			"Apply DOTs", "apply_dots",
			"Clear DOTs", "clear_dots",
			"Skills",
			{
				"Learn Languages", "language",
				"Master Politician", "social_politician_master",
				"WARNING UNLEARN ALL SKILLS WARNING",
					{
					"Last chance to cancel, no undoing this!!", "unlearn_all_skills",
					}
			}--[[,
			"Items",
			{
				"Gas Survey Tool", "object/tangible/survey_tool/survey_tool_gas.iff",
				"Chemical Survey Tool", "object/tangible/survey_tool/survey_tool_liquid.iff",
				"Flora Survey Tool", "object/tangible/survey_tool/survey_tool_lumber.iff",
				"Mineral Survey Tool", "object/tangible/survey_tool/survey_tool_mineral.iff",
				"Moisture Survey Tool", "object/tangible/survey_tool/survey_tool_moisture.iff",
				"Solar Survey Tool", "object/tangible/survey_tool/survey_tool_solar.iff",
				"Wind Survey Tool", "object/tangible/survey_tool/survey_tool_wind.iff",
				"Clothing Crafting Station", "object/tangible/crafting/station/clothing_station.iff",
				"Food Crafting Station", "object/tangible/crafting/station/food_station.iff",
				"Starship Crafting Station", "object/tangible/crafting/station/space_station.iff",
				"Structure Crafting Station", "object/tangible/crafting/station/structure_station.iff",
				"Weapon Crafting Station", "object/tangible/crafting/station/weapon_station.iff",
				"Clothing and Armor Crafting Tool", "object/tangible/crafting/station/clothing_tool.iff",
				"Food and Chemical Crafting Tool", "object/tangible/crafting/station/food_tool.iff",
				"Generic Crafting Tool", "object/tangible/crafting/station/generic_tool.iff",
				"Lightsaber Crafting Toolkit", "object/tangible/crafting/station/jedi_tool.iff",
				"Starship Crafting Tool", "object/tangible/crafting/station/space_tool.iff",
				"Structure and Furniture Crafting Tool", "object/tangible/crafting/station/structure_tool.iff",
				"Weapon, Droid, and General Item Crafting Tool", "object/tangible/crafting/station/weapon_tool.iff",
			}]]
}
		}ObjectTemplates:addTemplate(object_tangible_beta_beta_terminal_wound, "object/tangible/beta/beta_terminal_wound.iff")
