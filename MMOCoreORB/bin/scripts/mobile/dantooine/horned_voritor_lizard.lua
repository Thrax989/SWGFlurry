horned_voritor_lizard = Creature:new {
	objectName = "@mob/creature_names:horned_voritor_jungle_lizard",
	socialGroup = "voritor",
	faction = "",
	level = 54,
	chanceHit = 0.5,
	damageMin = 395,
	damageMax = 500,
	baseXp = 7099,
	baseHAM = 22000,
	baseHAMmax = 25000,
	armor = 2,
	resists = {180,180,180,180,180,180,180,180,140},
	meatType = "meat_carnivore",
	meatAmount = 65,
	hideType = "hide_leathery",
	hideAmount = 40,
	boneType = "bone_avian",
	boneAmount = 50,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/voritor_lizard_hue.iff"},
	scale = 1.2,
	lootGroups = {
		{
			groups = {
				{group = "voritor_lizard_common", chance = 10000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},
		{"strongdisease",""},
		{"creatureareapoison",""}

	}
}

CreatureTemplates:addCreatureTemplate(horned_voritor_lizard, "horned_voritor_lizard")
