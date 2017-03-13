emperors_hand = Creature:new {
	objectName = "@mob/creature_names:emperors_hand",
	socialGroup = "self",
	faction = "",
	level = 300,
	chanceHit = 85.0,
	damageMin = 1645,
	damageMax = 3000,
	specialDamageMult = 7.5,
	baseXp = 28549,
	baseHAM = 475000,
	baseHAMmax = 500000,
	armor = 3,
	resists = {95,95,95,95,95,95,95,95,95},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_emperors_hand_human_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "holocron_dark", chance = 850000},
				{group = "holocron_light", chance = 850000},
				{group = "crystals_premium", chance = 1600000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "melee_weapons", chance = 1500000},
				{group = "armor_attachments", chance = 1100000},
				{group = "clothing_attachments", chance = 1100000},
				{group = "carbines", chance = 1000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "fifthgen", chance = 10000000},
			},
			lootChance = 250000
		},
		{
			groups = {
				{group = "capes", chance = 10000000},
			},
			lootChance = 250000
		},
		{
			groups = {
				{group = "g_named_crystals", chance = 10000000},
			},
			lootChance = 250000
		}
	},
	weapons = {"dark_jedi_weapons_gen3"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(lightsabermaster,forcepowermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(emperors_hand, "emperors_hand")
