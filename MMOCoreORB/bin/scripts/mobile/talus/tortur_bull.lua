tortur_bull = Creature:new {
	objectName = "@mob/creature_names:tortur_bull",
	socialGroup = "tortur",
	faction = "",
	level = 25,
	chanceHit = 0.36,
	damageMin = 305,
	damageMax = 320,
	baseXp = 2543,
	baseHAM = 5000,
	baseHAMmax = 6100,
	armor = 0,
	resists = {15,15,15,-1,-1,-1,-1,200,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "bone_mammal",
	boneAmount = 1000,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/meager_tortur.iff"},
	scale = 1.1,

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
		{"knockdownattack",""},
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(tortur_bull, "tortur_bull")
