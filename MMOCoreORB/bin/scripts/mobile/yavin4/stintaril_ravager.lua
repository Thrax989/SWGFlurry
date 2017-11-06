stintaril_ravager = Creature:new {
	objectName = "@mob/creature_names:stintaril_ravager",
	socialGroup = "stinaril",
	faction = "",
	level = 16,
	chanceHit = 0.31,
	damageMin = 170,
	damageMax = 180,
	baseXp = 960,
	baseHAM = 2900,
	baseHAMmax = 3500,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 7,
	hideType = "hide_bristley",
	hideAmount = 5,
	boneType = "bone_mammal",
	boneAmount = 4,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/stintaril_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/stintaril_hue.iff",
	scale = 1.1,
	lootGroups = {},

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
	conversationTemplate = "",
	attacks = {
		{"mediumdisease",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(stintaril_ravager, "stintaril_ravager")
