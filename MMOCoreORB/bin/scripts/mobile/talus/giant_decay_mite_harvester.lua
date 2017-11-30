giant_decay_mite_harvester = Creature:new {
	objectName = "@mob/creature_names:giant_decay_mite_harvester",
	socialGroup = "mite",
	faction = "",
	level = 12,
	chanceHit = 0.29,
	damageMin = 120,
	damageMax = 130,
	baseXp = 514,
	baseHAM = 810,
	baseHAMmax = 990,
	armor = 0,
	resists = {115,115,0,0,0,0,0,-1,-1},
	meatType = "meat_insect",
	meatAmount = 12,
	hideType = "hide_scaley",
	hideAmount = 10,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/decay_mite.iff"},
	scale = 1.3,

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

CreatureTemplates:addCreatureTemplate(giant_decay_mite_harvester, "giant_decay_mite_harvester")
