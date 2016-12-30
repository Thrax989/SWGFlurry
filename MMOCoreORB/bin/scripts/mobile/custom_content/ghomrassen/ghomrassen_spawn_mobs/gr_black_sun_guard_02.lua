gr_black_sun_guard_02 = Creature:new {
	--objectName = "@mob/creature_names:mand_bunker_blksun_guard",
	customName = "Black Sun Sentry",
	socialGroup = "death_watch",
	faction = "",
	level = 85,
	chanceHit = 1.85,
	damageMin = 900,
	damageMax = 1050,
	baseXp = 7081,
	baseHAM = 18000,
	baseHAMmax = 25000,
	armor = 2,
	resists = {30,30,30,35,35,30,35,30,35},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_black_sun_guard.iff"},
	lootGroups = {
		{
			groups = {
				{group = "pistols", chance = 3333333},
				{group = "rifles", chance = 3333333},
				{group = "carbines", chance = 3333334}
			},
			lootChance = 100000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 100000000
		},	
		{
			groups = {
				{group = "jetpack_parts", chance = 2500000},				
				{group = "bounty_hunter_armor", chance = 2500000},
				{group = "crystals_premium", chance = 2500000},
				{group = "jetpack_base", chance = 2500000}
			},
			lootChance = 100000000
		},
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,bountyhuntermaster)
}

CreatureTemplates:addCreatureTemplate(gr_black_sun_guard_02, "gr_black_sun_guard_02")
