sherkarmini = Creature:new {
	objectName = "@mob/creature_names:sherkarmini",
	socialGroup = "sherkar",
	faction = "",
	level = 36,
	chanceHit = 30,
	damageMin = 227,
	damageMax = 425,
	baseXp = 285,
	baseHAM = 4100,
	baseHAMmax = 5010,
	armor = 3,
	resists = {65,65,65,65,65,65,65,65,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/sher_kar.iff"},
	scale = 0.1;
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000}				
		},
			lootChance = 7000000
		},
		{
			groups = {
				{group = "artifact", chance = 10000000}			
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 750000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 100000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 50000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
		},
			lootChance = 2000000
		}
	},

	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"",""},
		{"mediumpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(sherkarmini, "sherkarmini")
