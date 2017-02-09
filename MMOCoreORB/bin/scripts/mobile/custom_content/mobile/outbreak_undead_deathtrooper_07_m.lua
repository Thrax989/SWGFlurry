outbreak_undead_deathtrooper_07_m = Creature:new {
	--customName = "@mob/creature_names:outbreak_undead_deathtrooper_07_m",
	customName = "Deathtrooper",
	socialGroup = "geonosian",
	pvpFaction = "",
	faction = "",
	level = 150,
	chanceHit = 35.00,
	damageMin = 520,
	damageMax = 1750,
	baseXp = 15000,
	baseHAM = 150000,
	baseHAMmax = 175000,
	armor = 0,
	resists = {50,50,50,50,50,50,50,50,50},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 1,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/outbreak_undead_deathtrooper_07_m.iff"},
		
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "armor_all", chance = 2500000},
				{group = "weapons_all", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "wearables_all", chance = 5000000},
				{group = "loot_kit_parts", chance = 2500000},
				{group = "tailor_components", chance = 2500000}
			},
			lootChance = 10000000
		},
		},
	--scale = 1.25,
	weapons = {"unarmed_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,fencermaster,swordsmanmaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(outbreak_undead_deathtrooper_07_m, "outbreak_undead_deathtrooper_07_m")
