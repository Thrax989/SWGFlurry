juvenile_canyon_krayt_dragon = Creature:new {
	objectName = "@mob/creature_names:juvenile_canyon_krayt",
	socialGroup = "krayt",
	faction = "",
	level = 75,
	chanceHit = 7.5,
	damageMin = 745,
	damageMax = 1200,
	baseXp = 11577,
	baseHAM = 54000,
	baseHAMmax = 64000,
	armor = 0,
	resists = {175,175,175,155,150,155,155,155,-1},
	meatType = "meat_carnivore",
	meatAmount = 750,
	hideType = "hide_bristley",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/juvenile_canyon_krayt.iff"},
	scale = 0.55,

	lootGroups = {
		{
	        groups = {
				{group = "krayt_dragon_common", chance = 2000000},
				{group = "krayt_tissue_uncommon", chance = 1000000},
				{group = "armor_all", chance = 1000000},
				{group = "weapons_all", chance = 1000000},
				{group = "armor_attachments", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "junk",chance = 3000000}
				
			},
			lootChance = 7500000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""},
		{"creatureareaattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(juvenile_canyon_krayt_dragon, "juvenile_canyon_krayt_dragon")
