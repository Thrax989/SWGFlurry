bh_ris = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "an Elite Ranged Bounty Hunting Helmet",
	directObjectTemplate = "object/tangible/wearables/armor/ris/armor_ris_helmet.iff",
	craftingValues = {
	         {"armor_rating",2,2,0},
	         {"armor_effectiveness",0,0,0},
		     {"restraineffectiveness",20,15,0}, 
	         {"armor_integrity",20000,30000,0},
	         {"armor_health_encumbrance",25,15,0},
	         {"armor_action_encumbrance",22,13,0},
	         {"armor_mind_encumbrance",30,18,0},
	},
	customizationStringNames = {},
	customizationValues = {},
	skillMods = 
	{
		{"carbine_accuracy",25},
		{"heavy_rifle_lightning_accuracy",25},
		{"pistol_accuracy",25},
		{"ranged_defense",25},
		{"melee_defense",25},
		{"shieldduration",10},
	},
	certificationsRequired = {"combat_bountyhunter_master"}
}

addLootItemTemplate("bh_ris", bh_ris)