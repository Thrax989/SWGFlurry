veneral_devourer = Creature:new {
	objectName = "@mob/creature_names:pugoriss_venerable_devourer",
	socialGroup = "pugoriss",
	faction = "",
	level = 20,
	chanceHit = 0.32,
	damageMin = 160,
	damageMax = 170,
	baseXp = 1609,
	baseHAM = 3500,
	baseHAMmax = 4300,
	armor = 0,
	resists = {120,120,10,125,135,10,10,10,-1},
	meatType = "meat_carnivore",
	meatAmount = 35,
	hideType = "hide_leathery",
	hideAmount = 40,
	boneType = "bone_mammal",
	boneAmount = 45,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {"object/mobile/pugoriss.iff"},
	controlDeviceTemplate = "object/intangible/pet/pugoriss_hue.iff",
	scale = 1.25,

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
		{"intimidationattack",""},
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(veneral_devourer, "veneral_devourer")
