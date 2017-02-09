storm_lord_touched = Creature:new {
	customName = "Storm Lord touched",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 83,
	chanceHit = 10,
	damageMin = 750,
	damageMax = 1100,
	baseXp = 4900,
	baseHAM = 18000,
	baseHAMmax = 21000,
	armor = 0,
	resists = {10,10,10,25,15,10,10,-1,-1},
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

	templates = {"object/mobile/som/storm_lord_touched.iff"},
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

CreatureTemplates:addCreatureTemplate(storm_lord_touched, "storm_lord_touched")
