generic_noble_missions =
	{
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "noble_target_heirloom", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/glass_heirloom_s01.iff", itemName = "An Heirloom Drinking Glass" }
			},
			rewards =
			{
				{ rewardType = "loot", lootGroup = "junk" },
				{ rewardType = "credits", amount = getRandomNumber(350, 500) }
			}
		},
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "noble_target_ledger", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/ledger_s01.iff", itemName = "A Ledger" }
			},
			rewards =
			{
				{ rewardType = "loot", lootGroup = "junk" },
				{ rewardType = "credits", amount = getRandomNumber(350, 500) }
			}
		},
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "noble_target_hyperdrive", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/hyperdrive_part_s01.iff", itemName = "Hyperdrive Part" }
			},
			rewards =
			{
				{ rewardType = "loot", lootGroup = "junk" },
				{ rewardType = "credits", amount = getRandomNumber(350, 500) }
			}
		},
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "noble_target_bowl", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/bowl_s01.iff", itemName = "A Decorative Bowl" }
			},
			rewards =
			{
				{ rewardType = "loot", lootGroup = "junk" },
				{ rewardType = "credits", amount = getRandomNumber(350, 500) }
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "noble_target", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "loot", lootGroup = "junk" },
				{ rewardType = "credits", amount = getRandomNumber(350, 500) }
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "noble_target", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "loot", lootGroup = "junk" },
				{ rewardType = "credits", amount = getRandomNumber(350, 500) }
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "noble_target", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "loot", lootGroup = "junk" },
				{ rewardType = "credits", amount = getRandomNumber(350, 500) }
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "noble_target", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "loot", lootGroup = "junk" },
				{ rewardType = "credits", amount = getRandomNumber(350, 500) }
			}
		},
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "noble_target", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/camera_s01.iff", itemName = "A Camera" }
			},
			rewards =
			{
				{ rewardType = "loot", lootGroup = "junk" },
				{ rewardType = "credits", amount = getRandomNumber(350, 500) }
			}
		},
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "noble_target", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/briefcase_s01.iff", itemName = "A Locked Briefcase" }
			},
			rewards =
			{
				{ rewardType = "loot", lootGroup = "junk" },
				{ rewardType = "credits", amount = getRandomNumber(350, 500) }
			}
		},
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "noble_target", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/hyperdrive_part_s01.iff", itemName = "Hyperdrive Part" }
			},
			rewards =
			{
				{ rewardType = "loot", lootGroup = "junk" },
				{ rewardType = "credits", amount = getRandomNumber(350, 500) }
			}
		},
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "noble_target", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/bowl_s01.iff", itemName = "A Decorative Bowl" }
			},
			rewards =
			{
				{ rewardType = "loot", lootGroup = "junk" },
				{ rewardType = "credits", amount = getRandomNumber(350, 500) }
			}
		}
	}

npcMapGenericNoble =
	{
		{
			npcNumber = 1,
			stfFile = "@random_quest/noble",
			missions = generic_noble_missions
		}
	}

GenericNoble = ThemeParkLogic:new {
	genericGiver = true,
	npcMap = npcMapGenericNoble,
	className = "GenericNoble",
	screenPlayState = "generic_noble_quest",
	distance = 1000,
}

registerScreenPlay("GenericNoble", true)

generic_noble_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = GenericNoble
}
generic_noble_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = GenericNoble
}
