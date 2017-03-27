singing_mountain_clan_guardian = Creature:new {
	objectName = "@mob/creature_names:singing_mtn_clan_guardian",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mtn_clan",
	faction = "mtn_clan",
	level = 156,
	chanceHit = 8.5,
	damageMin = 895,
	damageMax = 1500,
	baseXp = 14789,
	baseHAM = 81000,
	baseHAMmax = 99000,
	armor = 0,
  	resists = {150,150,150,200,200,200,200,200,-1},
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

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_guardian.iff"},
	lootGroups = {
		{
			groups = {
				{group = "crystals_premium",  chance = 500000},
				{group = "crystals_select",  chance = 1500000},
				{group = "color_crystals",  chance = 500000},
				{group = "nightsister_common",  chance = 1300000},
				{group = "armor_attachments",  chance = 900000},
				{group = "clothing_attachments",  chance = 900000},
				{group = "melee_weapons",  chance = 1900000},
				{group = "rifles",  chance = 500000},
				{group = "pistols",  chance = 500000},
				{group = "carbines",  chance = 500000},
				{group = "junk",  chance = 500000},
				{group = "axkva_min",  chance = 500000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(singing_mountain_clan_guardian, "singing_mountain_clan_guardian")
