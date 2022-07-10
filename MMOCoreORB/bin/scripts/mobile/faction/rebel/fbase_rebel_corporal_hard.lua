fbase_rebel_corporal_hard = Creature:new {
	objectName = "@mob/creature_names:fbase_rebel_corporal_hard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 52,
	chanceHit = 0.52,
	damageMin = 405,
	damageMax = 520,
	baseXp = 5200,
	baseHAM = 10500,
	baseHAMmax = 13000,
	armor = 1,
	resists = {5,5,5,5,5,5,5,5,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_staff_corporal_bith_female_01.iff",
		"object/mobile/dressed_rebel_staff_corporal_bothan_female_01.iff",
		"object/mobile/dressed_rebel_staff_corporal_human_female_01.iff",
		"object/mobile/dressed_rebel_staff_corporal_human_male_01.iff",
		"object/mobile/dressed_rebel_staff_corporal_rodian_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 300000},
				{group = "junk", chance = 6500000},
				{group = "holocron_dark", chance = 150000},
				{group = "holocron_light", chance = 150000},
				{group = "imppoints", chance = 550000},
				{group = "armor_all", chance = 1050000},
				{group = "clothing_attachments", chance = 150000},
				{group = "armor_attachments", chance = 150000},
				{group = "wearables_all", chance = 1000000}
			}
		}
	},
	weapons = {"rebel_weapons_light"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,marksmanmaster,pistoleermid)
}

CreatureTemplates:addCreatureTemplate(fbase_rebel_corporal_hard, "fbase_rebel_corporal_hard")
