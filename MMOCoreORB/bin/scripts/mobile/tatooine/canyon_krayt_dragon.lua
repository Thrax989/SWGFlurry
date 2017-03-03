canyon_krayt_dragon = Creature:new {
	objectName = "@mob/creature_names:canyon_krayt_dragon",
	socialGroup = "krayt",
	faction = "",
	level = 85,
	chanceHit = 8.5,
	damageMin = 1245,
	damageMax = 1900,
	baseXp = 13367,
	baseHAM = 110000,
	baseHAMmax = 125000,
	armor = 0,
	resists = {180,180,180,180,180,180,180,180,150},
	meatType = "meat_carnivore",
	meatAmount = 100,
	hideType = "hide_bristley",
	hideAmount = 75,
	boneType = "bone_mammal",
	boneAmount = 65,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/canyon_krayt_dragon.iff"},
	scale = 0.9,
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
			lootChance = 8000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(canyon_krayt_dragon, "canyon_krayt_dragon")
