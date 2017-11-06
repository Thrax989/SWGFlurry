lesser_desert_womp_rat = Creature:new {
	objectName = "@mob/creature_names:lesser_desert_womprat",
	socialGroup = "rat",
	faction = "",
	level = 5,
	chanceHit = 0.25,
	damageMin = 45,
	damageMax = 50,
	baseXp = 85,
	baseHAM = 135,
	baseHAMmax = 165,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_wild",
	meatAmount = 2,
	hideType = "hide_leathery",
	hideAmount = 2,
	boneType = "bone_mammal",
	boneAmount = 1,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/lesser_desert_womp_rat.iff"},
	controlDeviceTemplate = "object/intangible/pet/womp_rat_hue.iff",
	scale = 0.8,

--Creature Reduced Loot Template
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
		
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(lesser_desert_womp_rat, "lesser_desert_womp_rat")
