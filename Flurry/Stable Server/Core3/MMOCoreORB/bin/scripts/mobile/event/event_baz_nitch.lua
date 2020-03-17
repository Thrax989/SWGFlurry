event_baz_nitch = Creature:new {
	customName = "Massive Escaped Baz Nitch",
	socialGroup = "baz_nitch",
	faction = "",
	level = 100,
	chanceHit = 0.32,
	damageMin = 170,
	damageMax = 180,
	baseXp = 1426,
	baseHAM = 120000,
	baseHAMmax = 120000,
	armor = 1,
	resists = {5,5,5,5,5,5,5,5,-1},
	meatType = "meat_wild",
	meatAmount = 100000,
	hideType = "hide_leathery",
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
	templates = {"object/mobile/young_baz_nitch.iff"},
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
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(event_baz_nitch, "event_baz_nitch")
