singing_mountain_clan_dragoon = Creature:new {
	objectName = "@mob/creature_names:singing_mtn_clan_dragoon",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mtn_clan",
	faction = "mtn_clan",
	level = 94,
	chanceHit = 0.95,
	damageMin = 620,
	damageMax = 950,
	baseXp = 8964,
	baseHAM = 20000,
	baseHAMmax = 25000,
	armor = 0,
	resists = {145,145,175,135,175,135,135,135,-1},
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

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_dragoon.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk",  chance = 100000},
				{group = "crystals_quality",  chance = 1000000},
				{group = "color_crystals",  chance = 500000},
				{group = "armor_attachments",  chance = 800000},
				{group = "clothing_attachments",  chance = 800000},
				{group = "melee_weapons",  chance = 2100000},
				{group = "rifles",  chance = 1000000},
				{group = "pistols",  chance = 1000000},
				{group = "carbines",  chance = 1000000},
				{group = "wearables_uncommon",  chance = 500000},
				{group = "tailor_components",  chance = 500000},
				{group = "junk",  chance = 500000},
				{group = "axkva_min",  chance = 200000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster)

}

CreatureTemplates:addCreatureTemplate(singing_mountain_clan_dragoon, "singing_mountain_clan_dragoon")
