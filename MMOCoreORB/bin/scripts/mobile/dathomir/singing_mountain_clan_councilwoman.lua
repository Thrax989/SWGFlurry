singing_mountain_clan_councilwoman = Creature:new {
	objectName = "@mob/creature_names:singing_mtn_clan_councilwoman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mtn_clan",
	faction = "mtn_clan",
	level = 300,
	chanceHit = 27.25,
	damageMin = 1520,
	damageMax = 2750,
	baseXp = 26654,
	baseHAM = 321000,
	baseHAMmax = 392000,
	armor = 0,
	resists = {135,135,135,200,200,200,200,200,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_councilwoman.iff"},
	lootGroups = {
		{
			groups = {
				{group = "crystals_premium",  chance = 1800000},
				{group = "nightsister_common",  chance = 1200000},
				{group = "armor_attachments", chance = 1200000},
				{group = "clothing_attachments", chance = 1200000},
				{group = "pistols",  chance = 800000},
				{group = "rifles",  chance = 800000},
				{group = "carbines",  chance = 900000},
				{group = "melee_weapons",  chance = 1000000},
				{group = "holocron_light",  chance = 500000},
				{group = "axkva_min",  chance = 600000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(singing_mountain_clan_councilwoman, "singing_mountain_clan_councilwoman")
