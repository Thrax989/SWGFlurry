pyke_syndicate_criminal = Creature:new {
	objectName = "",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "death_watch",
	pvpFaction = "death_watch",
	faction = "",
	level = 250,
	chanceHit = 100,
	damageMin = 2500,
	damageMax = 4050,
  specialDamageMult = 1.5,
	baseXp = 15000,
	baseHAM = 95000,
	baseHAMmax = 125000,
	armor = 1,
	resists = {30,70,70,70,70,70,70,70,35},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_black_sun_assassin.iff"},
		lootGroups = {
		{
			groups = {
				{group = "trash_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "trash_rare", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 3500000
		},
	},
	weapons = {"st_bombardier_weapons"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(commandomaster,marksmanmaster,tkamaster,brawlermaster,fencermaster,swordsmanmaster,pikemanmaster,riflemanmaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(pyke_syndicate_criminal, "pyke_syndicate_criminal")
