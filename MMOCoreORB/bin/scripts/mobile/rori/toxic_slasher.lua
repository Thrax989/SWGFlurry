toxic_slasher = Creature:new {
	objectName = "@mob/creature_names:vir_vur_toxic_slasher",
	socialGroup = "vir_vur",
	faction = "",
	level = 15,
	chanceHit = 0.31,
	damageMin = 170,
	damageMax = 180,
	baseXp = 831,
	baseHAM = 1200,
	baseHAMmax = 1400,
	armor = 0,
	resists = {110,0,0,0,0,-1,0,-1,-1},
	meatType = "meat_avian",
	meatAmount = 10,
	hideType = "hide_wooly",
	hideAmount = 10,
	boneType = "bone_mammal",
	boneAmount = 2,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/vir_vur_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/vir_vur_hue.iff",
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
		{"mildpoison",""},
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(toxic_slasher, "toxic_slasher")
