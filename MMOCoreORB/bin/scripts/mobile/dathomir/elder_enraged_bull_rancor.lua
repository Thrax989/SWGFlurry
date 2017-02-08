elder_enraged_bull_rancor = Creature:new {
   -- objectName = "@mob/creature_names:",
   customName = "elder enraged bull rancor",
	socialGroup = "rancor",
	faction = "",
	level = 89,
	chanceHit = 0.85,
	damageMin = 570,
	damageMax = 850,
	baseXp = 8500,
	baseHAM = 13000,
	baseHAMmax = 16000,
	armor = 0,
	resists = {40,170,40,200,200,200,40,40,-1},
	meatType = "meat_carnivore",
	meatAmount = 880,
	hideType = "hide_leathery",
	hideAmount = 750,
	boneType = "bone_mammal",
	boneAmount = 670,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 15,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/bull_rancor.iff"},
	scale = 1.2,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 4000000},
				{group = "armor_all", chance = 2000000},
				{group = "weapons_all", chance = 2500000},
				{group = "wearables_all", chance = 1500000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"creatureareaknockdown",""}
	}
}

CreatureTemplates:addCreatureTemplate(elder_enraged_bull_rancor, "elder_enraged_bull_rancor")
