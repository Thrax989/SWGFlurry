pyke_syndicate_criminal = Creature:new {
	objectName = "",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "death_watch",
	pvpFaction = "death_watch",
	faction = "",
	level = 300,
	chanceHit = 100,
	damageMin = 6500,
	damageMax = 8050,
  specialDamageMult = 1.5,
	baseXp = 15000,
	baseHAM = 95000,
	baseHAMmax = 125000,
	armor = 2,
	resists = {165,165,165,165,165,165,165,165,200},
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
				{group = "death_watch_bunker_ingredient_binary", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "death_watch_bunker_ingredient_protective", chance = 10000000},
			},
			lootChance = 1000000
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
	weapons = {"mandalorian_weapons_heavy"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(pikemanmaster,tkamaster,marksmanmaster,pistoleermaster,carbineermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(pyke_syndicate_criminal, "pyke_syndicate_criminal")
