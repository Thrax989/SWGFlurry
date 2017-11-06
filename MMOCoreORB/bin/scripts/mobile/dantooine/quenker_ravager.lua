quenker_ravager = Creature:new {
	objectName = "@mob/creature_names:quenker_ravager",
	socialGroup = "quenker",
	faction = "",
	level = 38,
	chanceHit = 0.43,
	damageMin = 365,
	damageMax = 440,
	baseXp = 3824,
	baseHAM = 9100,
	baseHAMmax = 11100,
	armor = 0,
	resists = {25,25,25,25,-1,-1,25,25,-1},
	meatType = "meat_wild",
	meatAmount = 35,
	hideType = "hide_scaley",
	hideAmount = 35,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/quenker_hue.iff"},
	scale = 1.2,

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
		{"dizzyattack",""},
		{"creatureareapoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(quenker_ravager, "quenker_ravager")
