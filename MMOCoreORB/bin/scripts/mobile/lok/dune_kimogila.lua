dune_kimogila = Creature:new {
	objectName = "@mob/creature_names:dune_kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 300,
	chanceHit = 0.95,
	damageMin = 1900,
	damageMax = 3800,
	baseXp = 10500,
	baseHAM = 50000,
	baseHAMmax = 100000,
	armor = 2,
	resists = {140,165,115,200,115,115,200,115,115},
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

	templates = {"object/mobile/kimogila_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	lootGroups = {
		{
	        	groups = {
				{group = "krayt_dragon_common", chance = 2000000},
				{group = "kimogila_common", chance = 5000000},
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""},
		{"creatureareapoison",""},
		{"creatureareacombo",""}
	}
}

CreatureTemplates:addCreatureTemplate(dune_kimogila, "dune_kimogila")
