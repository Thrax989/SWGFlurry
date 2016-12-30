storm_lord_guard = Creature:new {
	customName = "Storm Lord guard",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 85,
	chanceHit = 12,
	damageMin = 950,
	damageMax = 1250,
	baseXp = 5100,
	baseHAM = 20000,
	baseHAMmax = 23000,
	armor = 1,
	resists = {20,20,15,25,15,20,20,-1,-1},
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

	templates = {"object/mobile/som/storm_lord_guard.iff"},
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

CreatureTemplates:addCreatureTemplate(storm_lord_guard, "storm_lord_guard")
