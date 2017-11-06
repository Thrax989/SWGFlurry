mantigrue_screecher = Creature:new {
	objectName = "@mob/creature_names:mantigrue_screecher",
	socialGroup = "mantigrue",
	faction = "",
	level = 55,
	chanceHit = 0.55,
	damageMin = 420,
	damageMax = 550,
	baseXp = 5281,
	baseHAM = 11000,
	baseHAMmax = 13000,
	armor = 1,
	resists = {135,135,10,10,10,-1,10,10,-1},
	meatType = "meat_carnivore",
	meatAmount = 85,
	hideType = "hide_wooly",
	hideAmount = 65,
	boneType = "bone_avian",
	boneAmount = 45,
	milk = 0,
	tamingChance = 0.01,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/mantigrue_night_stalker.iff"},
	controlDeviceTemplate = "object/intangible/pet/perlek_hue.iff",
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
		{"intimidationattack",""},
		{"creatureareadisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(mantigrue_screecher, "mantigrue_screecher")
