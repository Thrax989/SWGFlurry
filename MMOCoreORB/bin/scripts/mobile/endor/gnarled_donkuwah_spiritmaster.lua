gnarled_donkuwah_spiritmaster = Creature:new {
	objectName = "@mob/creature_names:gnarled_donkuwah_spiritmaster",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "donkuwah_tribe",
	faction = "donkuwah_tribe",
	level = 35,
	chanceHit = 0.41,
	damageMin = 320,
	damageMax = 350,
	baseXp = 3551,
	baseHAM = 9000,
	baseHAMmax = 11000,
	armor = 0,
	resists = {0,40,0,0,0,-1,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {
		"object/mobile/dulok_male.iff",
		"object/mobile/dulok_female.iff"},

--NPC Donkuwah Loot Template
	lootGroups = {
		{
			groups = {
				{group = "artifact", chance = 10000000}			
		},
			lootChance = 100000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 50000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 25000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 10000
		},
		{
			groups = {
				{group = "donkuwah_common", chance = 10000000}
			},
			lootChance = 1460000
		}
	},
	weapons = {"donkuwah_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(gnarled_donkuwah_spiritmaster, "gnarled_donkuwah_spiritmaster")
