event_shear_mite = Creature:new {
	customName = "Massive Escaped Shear Mite",
	socialGroup = "shear_mite",
	faction = "",
	level = 100,
	chanceHit = 0.27,
	damageMin = 70,
	damageMax = 75,
	baseXp = 235,
	baseHAM = 120000,
	baseHAMmax = 120000,
	armor = 1,
	resists = {0,0,110,0,0,0,0,-1,-1},
	meatType = "meat_insect",
	meatAmount = 100000,
	hideType = "hide_scaley",
	hideAmount = 100000,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 2,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/shear_mite_broodling.iff"},
	controlDeviceTemplate = "object/intangible/pet/shear_mite_hue.iff",
	scale = 4,

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
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(event_shear_mite, "event_shear_mite")
