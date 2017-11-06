verne_bull = Creature:new {
	objectName = "@mob/creature_names:verne_bull",
	socialGroup = "verne",
	faction = "",
	level = 19,
	chanceHit = 0.32,
	damageMin = 170,
	damageMax = 180,
	baseXp = 1426,
	baseHAM = 4500,
	baseHAMmax = 5500,
	armor = 0,
	resists = {5,5,5,-1,-1,125,125,-1,-1},
	meatType = "meat_wild",
	meatAmount = 110,
	hideType = "hide_leathery",
	hideAmount = 95,
	boneType = "bone_mammal",
	boneAmount = 85,
	milkType = "milk_wild",
	milk = 85,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {"object/mobile/verne_bull.iff"},
	controlDeviceTemplate = "object/intangible/pet/verne_hue.iff",
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
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(verne_bull, "verne_bull")
