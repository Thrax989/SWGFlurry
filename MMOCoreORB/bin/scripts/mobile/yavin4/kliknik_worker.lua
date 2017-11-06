kliknik_worker = Creature:new {
	objectName = "@mob/creature_names:kliknik_worker",
	socialGroup = "kliknik",
	faction = "",
	level = 23,
	chanceHit = 0.35,
	damageMin = 210,
	damageMax = 220,
	baseXp = 2219,
	baseHAM = 6800,
	baseHAMmax = 8300,
	armor = 0,
	resists = {10,125,10,10,-1,-1,-1,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 6,
	hideType = "hide_scaley",
	hideAmount = 4,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/kliknik_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/kliknik_hue.iff",
	
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
		},
		{
			groups = {
				{group = "kliknik_common", chance = 10000000}
		},
			lootChance = 1000000
		},
	},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""},
		{"mildpoison",""}
	},
}
CreatureTemplates:addCreatureTemplate(kliknik_worker, "kliknik_worker")
