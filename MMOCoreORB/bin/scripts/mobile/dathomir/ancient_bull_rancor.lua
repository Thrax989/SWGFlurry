ancient_bull_rancor = Creature:new {
	objectName = "@mob/creature_names:ancient_bull_rancor",
	socialGroup = "rancor",
	faction = "",
	level = 300,
	chanceHit = 0.75,
	damageMin = 1900,
	damageMax = 3800,
	baseXp = 10500,
	baseHAM = 50000,
	baseHAMmax = 100000,
	armor = 2,
	resists = {150,165,150,200,200,200,150,140,130},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "bone_mammal",
	boneAmount = 950,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/bull_rancor.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 1.25,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 5000000},
				{group = "armor_all", chance = 3000000},
				{group = "weapons_all", chance = 500000},
				{group = "wearables_all", chance = 1500000}
			},
			lootChance = 2960000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding","BleedChance=60"},
		{"creatureareapoison","PoisonChance=40"},
		{"creatureareacombo","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(ancient_bull_rancor, "ancient_bull_rancor")
