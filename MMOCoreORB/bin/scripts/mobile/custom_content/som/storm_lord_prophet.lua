storm_lord_prophet = Creature:new {
	customName = "Storm Lord prophet",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 90,
	chanceHit = 12,
	damageMin = 850,
	damageMax = 1300,
	baseXp = 5574,
	baseHAM = 22000,
	baseHAMmax = 25500,
	armor = 1,
	resists = {15,15,10,25,15,10,10,-1,-1},
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
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/storm_lord_prophet.iff"},
	lootGroups = {
		{
			groups = {
				{group = "crystals_quality", chance = 1500000},
				{group = "color_crystals", chance = 1500000},
				{group = "armor_attachments", chance = 250000},
				{group = "clothing_attachments", chance = 250000},
				{group = "melee_weapons", chance = 2500000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "wearables_common", chance = 500000},
				{group = "tailor_components", chance = 500000}
			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermid,swordsmanmid,tkamid,pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(storm_lord_prophet, "storm_lord_prophet")
