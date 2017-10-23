THEME_PARK_IMPERIAL_BADGE = 106


kaja_orzee_missions =
	{
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_escort_moff",  npcName = "an Imperial Moff" }
			},
			secondarySpawns =
			{
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 750 }
			}
		},
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_rebel_sympathizer",  npcName = "a Rebel Sympathizer" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "rebel_corporal",  npcName = "" },
				{ npcTemplate = "rebel_corporal",  npcName = "" }
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Documents" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 1500 }
			}
		},

		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_assassin",  npcName = "an Assassin" }
			},
			secondarySpawns =
			{
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 2250 }
			}
		},

		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_assassin",  npcName = "a Droid Programmer" },
				{ npcTemplate = "theme_park_imperial_assassin",  npcName = "a Droid Programmer" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "rebel_corporal",  npcName = "" },
				{ npcTemplate = "rebel_corporal",  npcName = "" },
				{ npcTemplate = "rebel_corporal",  npcName = "" }
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 3000 }
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_escort_droid",  npcName = "RA-7" }
			},
			secondarySpawns =
			{

			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "faction", faction = "imperial", amount = 150 },
				{ rewardType = "loot", lootGroup = "theme_park_reward_imperial_kaja"} ,
				{ rewardType = "permission", permissionGroup = "emperors_retreat2" }
			}
		}
	}

loam_redge_missions =
	{
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_escort_noble",  npcName = "a Noble" }
			},
			secondarySpawns =
			{
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 3750 }
			}
		},

		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_escort_rebel_leader",  npcName = "random" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "rebel_resistance_dissident",  npcName = "" },
				{ npcTemplate = "rebel_resistance_dissident",  npcName = "" },
				{ npcTemplate = "rebel_resistance_dissident",  npcName = "" }
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 4500 }
			}
		},
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_slicer",  npcName = "a Slicer" }
			},
			secondarySpawns =
			{
			},
			itemSpawns = {
				{ itemTemplate = "object/tangible/loot/misc/damaged_datapad.iff", itemName = "Datapad" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 5250 }
			}
		},

		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_escort",  npcName = "a Slicer" }
			},
			secondarySpawns =
			{
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "faction", faction = "imperial", amount = 250 },
				{ rewardType = "loot", lootGroup = "theme_park_reward_imperial_redge"}
			}
		}
	}

lord_hethrir_missions =
	{
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_counterfeiter",  npcName = "a Counterfeiter" }
			},
			secondarySpawns =
			{
			},
			itemSpawns = {
				{ itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Holodisc" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 6000 }
			}
		},

		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_alderaanian_leader",  npcName = "random" }
			},
			secondarySpawns =
			{
			},
			itemSpawns = {
				{ itemTemplate = "object/tangible/loot/misc/damaged_datapad.iff", itemName = "Datapad" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 6750 }
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_rebels_father",  npcName = "random" }
			},
			secondarySpawns =
			{
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 7500 }
			}
		},

		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_escort",  npcName = "random" }
			},
			secondarySpawns =
			{
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Holodisc" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 8250 }
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_escort_rebel",  npcName = "random" }
			},
			secondarySpawns =
			{
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "faction", faction = "imperial", amount = 350 },
				{ rewardType = "loot", lootGroup = "theme_park_reward_imperial_hethrir"}
			}
		},
	}

thrawn_missions =
	{
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_escort_commander",  npcName = "Commander Dolman" }
			},
			secondarySpawns =
			{
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 9000 }
			}
		},

		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_thug",  npcName = "a Thug" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/component/item/quest_item/directional_sensor.iff", itemName = "Transponder" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 9750 }
			}
		},
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_escort",  npcName = "Geg Winthasen" }
			},
			secondarySpawns =
			{
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Holodisc" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 10500 }
			}
		},

		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_fambaa",  npcName = "a Fambaa" }
			},
			secondarySpawns = {
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/container/jar/jar_guts_s01.iff", itemName = "Jar of Fambaa Blood" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 11250 }
			}
		},
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_seller",  npcName = "Seldair Keeloo" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/firework_dud_s1.iff", itemName = "Rocket Launcher" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 12000 }
			}
		},

		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "rebel_commando",  npcName = "a Rebel Commando" }
			},
			secondarySpawns = {
				{ npcTemplate = "rebel_trooper",  npcName = "" },
				{ npcTemplate = "rebel_trooper",  npcName = "" }
			},
			itemSpawns =
			{
			},
			rewards =
			{
				{ rewardType = "faction", faction = "imperial", amount = 450 },
				{ rewardType = "loot_set", lootGroup = "theme_park_reward_imperial_thrawn", setSize = 2}
			}
		},
	}

veers_missions =
	{

		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_rebel_trooper",  npcName = "a Rebel Trooper" },
				{ npcTemplate = "thug",  npcName = "a Thug" },
				{ npcTemplate = "borvos_thug",  npcName = "Borvo's Thug" },
			},
			secondarySpawns = {
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Information" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 12750 }
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "rebel_trooper",  npcName = "a Rebel Trooper" },
				{ npcTemplate = "thug",  npcName = "a Thug" },
				{ npcTemplate = "thug",  npcName = "a Thug" },
			},
			secondarySpawns = {
			},
			itemSpawns =
			{
			},
			rewards =
			{
				{ rewardType = "credits", amount = 13500 }
			}
		},
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_borvos_thug",  npcName = "Borvo's Thug" },
			},
			secondarySpawns = {
				{ npcTemplate = "thug",  npcName = "a Thug" },
				{ npcTemplate = "thug",  npcName = "a Thug" },
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Shipping Manifest" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 14250 }
			}
		},

		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_twilek",  npcName = "Borvo the Twi'lek" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "thug",  npcName = "a Thug" },
				{ npcTemplate = "thug",  npcName = "a Thug" },
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 15000 }
			}
		},

		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "thug",  npcName = "a Thug" },
				{ npcTemplate = "thug",  npcName = "a Thug" },
				{ npcTemplate = "thug",  npcName = "a Thug" },
				{ npcTemplate = "theme_park_imperial_mercenary",  npcName = "a Mercenary" },
			},
			secondarySpawns = {
			},
			itemSpawns =
			{
			},
			rewards =
			{
				{ rewardType = "faction", faction = "imperial", amount = 550 },
				{ rewardType = "loot", lootGroup = "theme_park_reward_imperial_veers"}
			}
		},
	}

palpatine_missions =
	{

		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_escort",  npcName = "a Thug Ringleader" }
			},
			secondarySpawns =
			{
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 15750 }
			}
		},
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_escort",  npcName = "a Thug Ringleader" }
			},
			secondarySpawns =
			{
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Plans" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 16500 }
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "rsf_security_officer",  npcName = "a Security Officer" },
			},
			secondarySpawns = {
				{ npcTemplate = "thug",  npcName = "a Thug" },
				{ npcTemplate = "thug",  npcName = "a Thug" },
				{ npcTemplate = "thug",  npcName = "a Thug" },
				{ npcTemplate = "thug",  npcName = "a Thug" }
			},
			itemSpawns =
			{
			},
			rewards =
			{
				{ rewardType = "credits", amount = 17250 }
			}
		},

		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_escort_handmaiden",  npcName = "a Handmaiden" }
			},
			secondarySpawns =
			{
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 18000 }
			}
		},

		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_thug_ringleader",  npcName = "a Thug Ringleader" },
				{ npcTemplate = "thug",  npcName = "a Thug" },
				{ npcTemplate = "thug",  npcName = "a Thug" },
				{ npcTemplate = "thug",  npcName = "a Thug" }
			},
			secondarySpawns = {
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Plans" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 18750 }
			}
		},

		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_escort",  npcName = "a Parliament Courier" }
			},
			secondarySpawns =
			{
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "a Holodisc" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 19500 }
			}
		},

		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "rebel_general",  npcName = "a Rebel General" }
			},
			secondarySpawns = {
				{ npcTemplate = "rebel_trooper",  npcName = "a Rebel Trooper" },
				{ npcTemplate = "rebel_trooper",  npcName = "a Rebel Trooper" },
				{ npcTemplate = "rebel_trooper",  npcName = "a Rebel Trooper" },
				{ npcTemplate = "rebel_trooper",  npcName = "a Rebel Trooper" }
			},
			itemSpawns =
			{
			},
			rewards =
			{
				{ rewardType = "faction", faction = "imperial", amount = 650 },
				{ rewardType = "loot", lootGroup = "theme_park_reward_imperial_emperor"}
			}
		}

	}

darth_vader_missions =
	{
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_haro_whitesun",  npcName = "Haro Whitesun" },
			},
			secondarySpawns = {
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Information" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 20250 }
			}
		},

		{
			missionType = "retrieve",
			primarySpawns =
			{
				{ npcTemplate = "mara_jade",  npcName = "Mara Jade" }
			},
			secondarySpawns =
			{
			},
			itemSpawns = {
				{ itemTemplate = "object/tangible/loot/misc/damaged_datapad.iff", itemName = "Documents" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 21000 }
			}
		},

		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_mellag_davin_lars",  npcName = "Mellag Davin-Lars" }
			},
			secondarySpawns = {
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Information" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 21750 }
			}
		},

		{
			missionType = "retrieve",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_mattias",  npcName = "Mattias Ve'Shra" }
			},
			secondarySpawns =
			{
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Information" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 22500 }
			}
		},

		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_mattias_aggro",  npcName = "Mattias Ve'Shra" }
			},
			secondarySpawns = {
				{ npcTemplate = "brigand_assassin",  npcName = "an Assassin" },
				{ npcTemplate = "brigand_assassin",  npcName = "an Assassin" },
				{ npcTemplate = "brigand_assassin",  npcName = "an Assassin" },
			},
			itemSpawns =
			{
			},
			rewards =
			{
				{ rewardType = "credits", amount = 23250 }
			}
		},

		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "theme_park_imperial_kayderr",  npcName = "Kayderr" }
			},
			secondarySpawns = {
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Information" }
			},
			rewards =
			{
				{ rewardType = "faction", faction = "imperial", amount = 850 },
				{ rewardType = "credits", amount = 24000 },
				{ rewardType = "loot",  lootGroup = "theme_park_reward_imperial_vader" },
				{ rewardType = "badge", badge = THEME_PARK_IMPERIAL_BADGE }
			}
		}
	}

npcMapImperial =
	{
		{
			spawnData = {  npcTemplate = "kaja_orzee", x = 1.1, z = 0.2, y = -13.3, direction = 0, cellID = 1418872, position = STAND },
			worldPosition = { x = 2407.8, y = -3944.5 },
			npcNumber = 1,
			stfFile = "@theme_park_imperial/kaja_orzee",
			stfWarning = "not_imperial",
			missions = kaja_orzee_missions
		},
		{
			spawnData = {  npcTemplate = "loam_redge", x = 19.8, z = 0.2, y = -41.9, direction = 54, cellID = 1418875, position = STAND },
			worldPosition = { x = 2382, y = -3967 },
			npcNumber = 2,
			stfFile = "@theme_park_imperial/loam_redge",
			stfWarning = "kaja_orzee",
			missions = loam_redge_missions
		},
		{
			spawnData = {  npcTemplate = "lord_hethrir", x = 5.1, z = 0.2, y = -41.4, direction = -30, cellID = 1418876, position = STAND },
			worldPosition = { x = 2380, y = -3952 },
			npcNumber = 4,
			stfFile = "@theme_park_imperial/lord_hethrir",
			stfWarning = "loam_redge",
			missions = lord_hethrir_missions
		},
		{
			spawnData = {  npcTemplate = "thrawn", x = 2371.1, z = 291.9, y = -3923.8, direction = -132, cellID = 0, position = STAND, mood = "conversation" },
			npcNumber = 8,
			stfFile = "@theme_park_imperial/thrawn",
			stfWarning = "lord_hethrir",
			missions = thrawn_missions
		},
		{
			spawnData = {  npcTemplate = "veers", x = 2370.5, z = 291.9, y = -3923.1, direction = -136, cellID = 0, position = STAND, mood = "conversation" },
			npcNumber = 16,
			stfFile = "@theme_park_imperial/veers",
			stfWarning = "lord_hethrir",
			missions = veers_missions
		},
		{
			spawnData = {  npcTemplate = "palpatine", x = 13, z = 21, y = -25.5, direction = 180, cellID = 1418886, position = STAND },
			worldPosition = { x = 2397, y = -3958 },
			npcNumber = 32,
			stfFile = "@theme_park_imperial/emperor",
			stfWarning = "emperor",
			missions = palpatine_missions
		},
		{
			spawnData = {  npcTemplate = "darth_vader", x = -57.5, z = 0.2, y = -24.1, direction = 90, cellID = 1418884, position = STAND },
			worldPosition = { x = 2387, y = -3889 },
			npcNumber = 64,
			stfFile = "@theme_park_imperial/darth_vader",
			stfWarning = "vader",
			missions = darth_vader_missions
		},
		{
			spawnData = {  npcTemplate = "record_keeper_imperial", x = 32.70, z = 0.2, y = -36.70, direction = 0, cellID = 1418873, position = STAND },
			npcNumber = -1,
			stfFile = "",
			missions = {}
		},
	}

permissionMapImperial = {
	{
		planetName = "naboo",
		regionName = "emperors_retreat",
		permissions =
		{
			{
				cells = { 1418872, 1418873 },
				conditions =
				{
					{ permissionType = "faction" }
				}
			},
			{
				cells = { 1418874, 1418875, 1418876, 1418877, 1418878, 1418879, 1418880, 1418881, 1418882, 1418883, 1418884, 1418885, 1418886 },
				conditions =
				{
					{ permissionType = "missionState", mission = "theme_park_imperial", missionState = 1 },
					{ permissionType = "faction" }
				}
			}
		}
	}
}

permissionMapImperialWarp = {
	{
		planetName = "naboo",
		radius = 20,
		cells = { 1418874 },
		conditions =
		{
			{ permissionType = "faction", faction = FACTIONIMPERIAL }
		},
		stfWarning = "not_imperial"
	},
}

ThemeParkImperial = ThemeParkLogic:new {
	npcMap = npcMapImperial,
	permissionMap = permissionMapImperial,
	className = "ThemeParkImperial",
	screenPlayState = "imperial_theme_park",
	missionDescriptionStf = "@theme_park_imperial/quest_details:imperial_retreat_",
	missionCompletionMessageStf = "@theme_park/messages:imperial_completion_message",
	faction = FACTIONIMPERIAL,
	planetName = "naboo"
}

registerScreenPlay("ThemeParkImperial", true)

theme_park_imperial_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = ThemeParkImperial
}
theme_park_imperial_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = ThemeParkImperial
}

