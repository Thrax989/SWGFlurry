jatrian_lytus_missions =
{
	{ 
		missionType = "escort",
		primarySpawns = 
		{ 
			{ npcTemplate = "nai", npcName = "Nai (a Rogue Trooper)" } 
		}, 
		secondarySpawns = 
		{
				{ npcTemplate = "rebel_brigadier_general", npcName = "random" },	
				{ npcTemplate = "specforce_major", npcName = "random" }					
		},
		itemSpawns = {}, 		
		rewards = 
		{ 
			{ rewardType = "faction", faction = "imperial", amount = 2000 },
			{ rewardType = "loot", lootGroup = "imperial_com" },
			{ rewardType = "credits", amount = 5000 },
		}
	},
	{
		missionType = "escort", 
		primarySpawns = 
		{ 
			{ npcTemplate = "chino", npcName = "Chino (an Empire Chief Inquisitor)" } 		
		}, 
		secondarySpawns = {},
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "faction", faction = "imperial", amount = 2000 },
			{ rewardType = "loot", lootGroup = "imperial_com" },
			{ rewardType = "credits", amount = 5000 },
		}
	},	
	{
		missionType = "retrieve", 
		primarySpawns = 
		{ 
			{ npcTemplate = "echi", npcName = "Echi (a Holovid Developer)" } 
		}, 
		secondarySpawns = {},
		itemSpawns = 
		{
			{ itemTemplate = "object/tangible/loot/simple_kit/datadisk.iff", itemName = "Datadisk" }
		}, 
		rewards = 
		{ 
			{ rewardType = "faction", faction = "imperial", amount = 2000 },
			{ rewardType = "loot", lootGroup = "imperial_com" },
			{ rewardType = "credits", amount = 5000 },
		}
	},
	{
		missionType = "deliver", 
		primarySpawns = 
		{ 
			{ npcTemplate = "jaaves", npcName = "Jaaves" } 
		}, 
		secondarySpawns = {},
		itemSpawns = 
		{
			{ itemTemplate = "object/tangible/mission/quest_item/jatrian_lytus_q3_needed.iff", itemName = "Datadisc" }
		}, 
		rewards = 
		{ 
			{ rewardType = "faction", faction = "imperial", amount = 2000 },
			{ rewardType = "loot", lootGroup = "imperial_com" },
			{ rewardType = "credits", amount = 5000 },
		}
	}	
}

npcMapJatrianLytus = 
{ 
	{ 
		spawnData = { npcTemplate = "jatrian_lytus", x = 5313.08, z = 80, y = 5793.32, direction = 0, cellID = 0, position = STAND },
		npcNumber = 1,   
		stfFile = "@static_npc/dantooine/dantooine_imperialgarrison_jatrian_lytus", 
		missions = jatrian_lytus_missions 
	},
}

JatrianLytus = ThemeParkLogic:new {
	npcMap = npcMapJatrianLytus,
	className = "JatrianLytus",
	screenPlayState = "jatrian_lytus_quest",
	planetName = "rori",
	distance = 200,
	faction = FACTIONIMPERIAL
}

registerScreenPlay("JatrianLytus", true)

jatrian_lytus_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = JatrianLytus
}
jatrian_lytus_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = JatrianLytus
}
