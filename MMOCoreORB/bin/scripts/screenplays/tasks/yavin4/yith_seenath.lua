
yith_seenath_missions =
	{
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "imperial_courier_quest_yith", npcName = "Imperial Courier" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "stormtrooper", npcName = "" },
				{ npcTemplate = "stormtrooper", npcName = "" }
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/quest_item/yith_seenath_q1_needed.iff", itemName = "" }
			},
			rewards =
			{
			{ rewardType = "faction", faction = "rebel", amount = 2000 },
			{ rewardType = "loot", lootGroup = "rebel_com" },
			{ rewardType = "credits", amount = 5000 },
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "imperial_lieutenant_colonel", npcName = "" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "swamp_trooper", npcName = "" },
				{ npcTemplate = "swamp_trooper", npcName = "" },
				{ npcTemplate = "swamp_trooper", npcName = "" },
				{ npcTemplate = "swamp_trooper", npcName = "" }
			},
			itemSpawns =
			{
			},
			rewards =
			{
			{ rewardType = "faction", faction = "rebel", amount = 2000 },
			{ rewardType = "loot", lootGroup = "rebel_com" },
			{ rewardType = "credits", amount = 5000 },
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "imperial_inquisitor", npcName = "" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "storm_commando", npcName = "" },
				{ npcTemplate = "storm_commando", npcName = "" },
				{ npcTemplate = "storm_commando", npcName = "" },
				{ npcTemplate = "storm_commando", npcName = "" }
			},
			itemSpawns =
			{
			},
			rewards =
			{
			{ rewardType = "faction", faction = "rebel", amount = 2000 },
			{ rewardType = "loot", lootGroup = "rebel_com" },
			{ rewardType = "credits", amount = 5000 },
			}
		}
	}

npcMapYithSeenath =
	{
		{
			spawnData = { npcTemplate = "yith_seenath", x = 5340.93, z = 80, y = 5670.17, direction = 0, cellID = 0,
			npcNumber = 1,
			stfFile = "@static_npc/yavin/yavin_rebelcamp_yith_seenath",
			missions = yith_seenath_missions
		},
	}

YithSeenath = ThemeParkLogic:new {
	npcMap = npcMapYithSeenath,
	className = "YithSeenath",
	screenPlayState = "yith_seenath_quest",
	planetName = "rori",
	distance = 200,
	faction = FACTIONREBEL
}

registerScreenPlay("YithSeenath", true)

yith_seenath_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = YithSeenath
}
yith_seenath_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = YithSeenath
}
