krayt_dragon_adolescent = Creature:new {
	objectName = "@mob/creature_names:krayt_dragon_adolescent",
	socialGroup = "krayt",
	faction = "",
	level = 85,
  	chanceHit = 30,
 	damageMin = 2270,
 	damageMax = 4250,
	baseXp = 214400,
	baseHAM = 410000,
	baseHAMmax = 501000,
	armor = 3,
	resists = {195,195,195,195,165,195,195,195,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 750,
	boneType = "bone_mammal",
	boneAmount = 675,
	milk = 0,
	tamingChance = 0.25,
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
					{group = "krayt_tissue_rare", chance = 3000000},
					{group = "krayt_tissue_uncommon", chance = 3000000},
					{group = "pearls_flawless", chance = 3000000},
					{group = "clothing_attachments", chance = 1000000},
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
