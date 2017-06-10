--Testing Coms


magur_torigai_missions =
{
	{ 
		missionType = "assassinate",
		primarySpawns = 
		{ 
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" },
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" }
		}, 
		secondarySpawns =
		{

		},
		itemSpawns =
		{

		}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 500 },
			{ rewardType = "faction", faction = "rebel", amount = 10 },
		}
	},
	{ 
		missionType = "assassinate",
		primarySpawns = 
		{ 
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" },
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" },
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" }
		}, 
		secondarySpawns =
		{

		},
		itemSpawns =
		{

		}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 1000 },
			{ rewardType = "faction", faction = "rebel", amount = 20 },
		}
	},
	{ 
		missionType = "assassinate",
		primarySpawns = 
		{ 
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" },
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" },
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" },
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" }
		}, 
		secondarySpawns =
		{

		},
		itemSpawns =
		{

		}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 1500 },
			{ rewardType = "faction", faction = "rebel", amount = 30 },
		}
	},
	{ 
		missionType = "assassinate",
		primarySpawns = 
		{ 
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" },
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" },
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" },
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" },
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" }
		}, 
		secondarySpawns =
		{

		},
		itemSpawns =
		{

		}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 2000 },
			{ rewardType = "faction", faction = "rebel", amount = 40 },
		}
	},
	{
		missionType = "assassinate", 
		primarySpawns = 
		{ 
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" },
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" },
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" },
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" },
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" },
			{ npcTemplate = "stormtrooper", npcName = "stormtrooper" }
		}, 
		secondarySpawns =
		{

		}, 
		itemSpawns = 
		{

		}, 
		rewards = 
		{
			{ rewardType = "credits", amount = 2500 },
			{ rewardType = "faction", faction = "rebel", amount = 50 },
		}
	},
}

npcMapMagurTorigai = 
{ 
	{ 
		spawnData = { npcTemplate = "magur_torigai", x = 5132, z = 80, y = 5729, direction = 0, cellID = 0, position = STAND },
		npcNumber = 1,
		stfFile = "@static_npc/rori/rori_restuss_magur_torigai",
		missions = magur_torigai_missions
	},
}

MagurTorigai = ThemeParkLogic:new {
	npcMap = npcMapMagurTorigai,
	className = "MagurTorigai",
	screenPlayState = "magur_torigai_quest",
	planetName = "rori",
	distance = 150
}

registerScreenPlay("MagurTorigai", true)

magur_torigai_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = MagurTorigai
}
