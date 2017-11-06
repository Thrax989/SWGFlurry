giant_cave_veermok = Creature:new {
	objectName = "@mob/creature_names:veermok_giant_cave",
	socialGroup = "veermok",
	faction = "",
	level = 26,
	chanceHit = 0.35,
	damageMin = 210,
	damageMax = 220,
	baseXp = 2730,
	baseHAM = 5900,
	baseHAMmax = 7200,
	armor = 0,
	resists = {150,150,0,0,0,0,0,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 290,
	hideType = "hide_bristley",
	hideAmount = 250,
	boneType = "bone_mammal",
	boneAmount = 160,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/giant_veermok.iff"},
	scale = 1.5,

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
		{"",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(giant_cave_veermok, "giant_cave_veermok")
