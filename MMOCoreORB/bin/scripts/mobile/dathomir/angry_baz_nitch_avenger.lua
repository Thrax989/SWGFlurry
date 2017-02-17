angry_baz_nitch_avenger = Creature:new {
	objectName = "@mob/creature_names:angry_baz_nitch_avenger",
	socialGroup = "baz_nitch",
	faction = "",
	level = 24,
	chanceHit = 0.35,
	damageMin = 230,
	damageMax = 240,
	baseXp = 2543,
	baseHAM = 5000,
	baseHAMmax = 6100,
	armor = 0,
	resists = {10,135,10,10,10,10,10,10,-1},
	meatType = "meat_wild",
	meatAmount = 5,
	hideType = "hide_leathery",
	hideAmount = 2,
	boneType = "bone_mammal",
	boneAmount = 2,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/baz_nitch_hue.iff"},
	scale = 1.05,
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
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
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(angry_baz_nitch_avenger, "angry_baz_nitch_avenger")
