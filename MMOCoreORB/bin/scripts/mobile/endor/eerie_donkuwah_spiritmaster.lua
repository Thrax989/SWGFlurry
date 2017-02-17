eerie_donkuwah_spiritmaster = Creature:new {
	objectName = "@mob/creature_names:eerie_donkuwah_spiritmaster",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "donkuwah_tribe",
	faction = "donkuwah_tribe",
	level = 39,
	chanceHit = 0.44,
	damageMin = 350,
	damageMax = 410,
	baseXp = 3915,
	baseHAM = 9200,
	baseHAMmax = 11200,
	armor = 0,
	resists = {0,0,0,-1,-1,0,0,0,-1},
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
			lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "donkuwah_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "wearables_all", chance = 5000000},
				{group = "loot_kit_parts", chance = 2500000},
				{group = "tailor_components", chance = 2500000}
			},
			lootChance = 10000000
		},
		},
	weapons = {"donkuwah_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(eerie_donkuwah_spiritmaster, "eerie_donkuwah_spiritmaster")
