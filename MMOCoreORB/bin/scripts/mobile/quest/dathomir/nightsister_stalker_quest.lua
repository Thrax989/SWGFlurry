nightsister_stalker_quest = Creature:new {
	objectName = "@mob/creature_names:nightsister_stalker",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 60,
	chanceHit = 10,
	damageMin = 350,
	damageMax = 420,
	baseXp = 150,
	baseHAM = 12000,
	baseHAMmax = 15000,
	armor = 1,
	resists = {10,10,10,10,10,10,10,10,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_stalker.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 500000},
				{group = "color_crystals", chance = 500000},
				{group = "nightsister_common", chance = 2000000},
				{group = "junk", chance = 3000000},
				{group = "tailor_components", chance = 2000000},
				{group = "loot_kit_parts", chance = 2000000}
			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(nightsister_stalker_quest, "nightsister_stalker_quest")
