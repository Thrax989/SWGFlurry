krayt_dragon_adolescent_elder = Creature:new {
 	objectName = "@mob/creature_names:",
 	customName = "krayt dragon adolescent elder",
 	socialGroup = "krayt",
 	faction = "",
 	level = 300,
 	chanceHit = 30,
 	damageMin = 2270,
 	damageMax = 4250,
 	baseXp = 285490,
 	baseHAM = 410000,
 	baseHAMmax = 501000,
 	armor = 0,
 	resists = {75,75,75,75,75,75,75,75,25},
 	meatType = "meat_carnivore",
 	meatAmount = 1000,
 	hideType = "hide_bristley",
 	hideAmount = 750,
 	boneType = "bone_mammal",
 	boneAmount = 675,
 	milk = 0,
 	tamingChance = 0,
 	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
 	optionsBitmask = AIENABLED,
 	diet = CARNIVORE,
 
 	templates = {"object/mobile/krayt_dragon_hue.iff"},
 	scale = 0.7;
 	lootGroups = {
 		{
 	        groups = {
 					{group = "krayt_tissue_rare", chance = 4000000},
 					{group = "krayt_tissue_uncommon", chance = 1000000},
 					{group = "pearls_flawless", chance = 3000000},
 					{group = "clothing_attachments", chance = 2000000},
 			},
 			lootChance = 10000000
 		}
 	},
 	weapons = {},
 	conversationTemplate = "",
 	attacks = {
 		{"creatureareacombo",""},
 		{"creatureareaknockdown",""}
 	}
 } 
 CreatureTemplates:addCreatureTemplate(krayt_dragon_adolescent_elder, "krayt_dragon_adolescent_elder")
