monstrous_brute = Creature:new {
	objectName = "@mob/creature_names:rancor_monstrous_brute",
	socialGroup = "rancor",
	faction = "",
	level = 87,
	chanceHit = 0.82,
	damageMin = 595,
	damageMax = 900,
	baseXp = 8315,
	baseHAM = 13000,
	baseHAMmax = 16000,
	armor = 1,
	resists = {35,160,35,200,200,200,35,35,-1},
	meatType = "meat_carnivore",
	meatAmount = 950,
	hideType = "hide_leathery",
	hideAmount = 878,
	boneType = "bone_mammal",
	boneAmount = 778,
	milk = 0,
	tamingChance = 0,
	ferocity = 12,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/rancor_hue.iff"},
	scale = 1.35,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 8000000},
				{group = "skill_buffs", chance = 2000000},
			},
			lootChance = 2740000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"creatureareaattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(monstrous_brute, "monstrous_brute")
