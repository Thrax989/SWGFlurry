arachne_webmaster = Creature:new {
	objectName = "@mob/creature_names:arachne_webmaster",
	socialGroup = "arachne",
	faction = "",
	level = 50,
	chanceHit = 0.5,
	damageMin = 405,
	damageMax = 520,
	baseXp = 4916,
	baseHAM = 9900,
	baseHAMmax = 12100,
	armor = 1,
	resists = {135,135,-1,160,160,-1,160,-1,-1},
	meatType = "meat_insect",
	meatAmount = 30,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/angler_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/angler_hue.iff",
	scale = 1.15,

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
		{"stunattack",""},
		{"strongpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(arachne_webmaster, "arachne_webmaster")
