spiked_slasher = Creature:new {
	objectName = "@mob/creature_names:voritor_spiked_slasher",
	socialGroup = "voritor",
	faction = "",
	level = 55,
	chanceHit = 1.25,
	damageMin = 480,
	damageMax = 620,
	baseXp = 11147,
	baseHAM = 11500,
	baseHAMmax = 14500,
	armor = 1,
	resists = {165,165,150,150,150,145,200,150,-1},
	meatType = "meat_carnivore",
	meatAmount = 130,
	hideType = "hide_leathery",
	hideAmount = 80,
	boneType = "bone_avian",
	boneAmount = 100,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/voritor_lizard_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/voritor_lizard_hue.iff",
	scale = 1.3,
	lootGroups = {
		{
			groups = {
				{group = "voritor_lizard_common", chance = 10000000}
			},
			lootChance = 2160000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison","stateAccuracyBonus=75"},
		{"creatureareapoison","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(spiked_slasher, "spiked_slasher")
