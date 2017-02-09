aakuan_overlord = Creature:new {
	--objectName = "@mob/creature_names:",
 	customName = "Aakuan Overlord",
	socialGroup = "aakuans",
	faction = "aakuans",
	level = 225,
	chanceHit = 25.00,
	damageMin = 2200,
	damageMax = 2300,
	baseXp = 25000,
	baseHAM = 100000,
	baseHAMmax = 120000,
	armor = 2,
	resists = {60,60,60,60,60,60,60,60,-1},
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
		"object/mobile/dressed_aakuan_guardian_trandoshan_female_01.iff",
		"object/mobile/dressed_aakuan_guardian_trandoshan_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "aakuan_common", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"melee_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(brawlermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(aakuan_overlord, "aakuan_overlord")
