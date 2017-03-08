krayt_dragon_adolescent = Creature:new {
	objectName = "@mob/creature_names:krayt_dragon_adolescent",
	socialGroup = "krayt",
	faction = "",
	level = 85,
	chanceHit = 8.5,
	damageMin = 1245,
	damageMax = 1900,
	baseXp = 13367,
	baseHAM = 115000,
	baseHAMmax = 125000,
	armor = 0,
	resists = {185,185,185,185,185,185,185,185,155},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 750,
	boneType = "bone_mammal",
	boneAmount = 675,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/krayt_dragon_hue.iff"},
	scale = 0.7,
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

CreatureTemplates:addCreatureTemplate(krayt_dragon_adolescent, "krayt_dragon_adolescent")
