event_tybis = Creature:new {
	customName = "Massive Escaped Tybis",
	socialGroup = "tybis",
	faction = "",
	level = 100,
	chanceHit = 0.360000,
	damageMin = 260,
	damageMax = 270,
	baseXp = 2637,
	baseHAM = 120000,
	baseHAMmax = 120000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 100000,
	hideType = "hide_bristley",
	hideAmount = 100000,
	boneType = "bone_mammal",
	boneAmount = 100000,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {"object/mobile/tybis_hue.iff"},
	scale = 4,

--Creature Default Loot Template
	lootGroups = {
		{
			groups = {
				{group = "artifact", chance = 10000000}			
		},
			lootChance = 100000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 50000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 25000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 10000
		}
	},
	weapons = {},
	attacks = {}
}

CreatureTemplates:addCreatureTemplate(event_tybis, "event_tybis")
