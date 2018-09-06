hoth_mynock = Creature:new {
	customName = "a mynock",
	socialGroup = "mynock",
	faction = "",
	level = 26,
	chanceHit = 0.35,
	damageMin = 230,
	damageMax = 240,
	baseXp = 2730,
	baseHAM = 6800,
	baseHAMmax = 8300,
	armor = 0,
	resists = {120,135,10,150,150,-1,-1,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 55,
	hideType = "hide_leathery",
	hideAmount = 73,
	boneType = "bone_mammal",
	boneAmount = 25,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/salt_mynock_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/salt_mynock_hue.iff",
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000}				
		},
			lootChance = 7000000
		},
		{
			groups = {
				{group = "artifact", chance = 10000000}			
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 750000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 100000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 50000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
		},
			lootChance = 2000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""},
		{"mediumdisease",""}

	}
}

CreatureTemplates:addCreatureTemplate(hoth_mynock, "hoth_mynock")
