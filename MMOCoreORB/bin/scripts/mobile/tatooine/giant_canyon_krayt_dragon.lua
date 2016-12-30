giant_canyon_krayt_dragon = Creature:new {
	objectName = "@mob/creature_names:giant_canyon_krayt_dragon",
	socialGroup = "krayt",
	faction = "",
	level = 85,
  	chanceHit = 30.0,
 	damageMin = 1645,
 	damageMax = 3000,
	baseXp = 225950,
	baseHAM = 385000,
	baseHAMmax = 471000,
	armor = 3,
	resists = {170,170,170,170,130,170,170,170,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 870,
	boneType = "bone_mammal",
	boneAmount = 805,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/canyon_krayt_dragon.iff"},
	scale = 1.2;

	lootGroups = {
		{
	        groups = {
					{group = "krayt_dragon_common2", chance = 3000000},
					{group = "krayt_tissue_rare", chance = 3000000},
					{group = "pearls_premium", chance = 3000000},
					{group = "clothing_attachments", chance = 1000000},
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack","stateAccuracyBonus=50"},
		{"creatureareaknockdown","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(giant_canyon_krayt_dragon, "giant_canyon_krayt_dragon")
