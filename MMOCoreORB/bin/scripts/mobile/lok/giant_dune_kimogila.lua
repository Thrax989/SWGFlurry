giant_dune_kimogila = Creature:new {
	objectName = "@mob/creature_names:giant_dune_kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 300,
	chanceHit = 10.0,
	damageMin = 2200,
	damageMax = 4400,
	baseXp = 12000,
	baseHAM = 80000,
	baseHAMmax = 125000,
	armor = 2,
	resists = {165,180,165,200,165,165,200,165,130},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/giant_dune_kimogila.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	scale = 1.3,
	lootGroups = {
	 {
	        groups = {
				{group = "giant_dune_kimo_common", chance = 3500000},
				{group = "kimogila_common", chance = 6500000},
			},
			lootChance = 5000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo",""},
		{"creatureareadisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(giant_dune_kimogila, "giant_dune_kimogila")
