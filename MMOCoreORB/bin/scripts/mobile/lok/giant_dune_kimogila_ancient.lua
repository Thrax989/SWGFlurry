giant_dune_kimogila_ancient = Creature:new {
	-- objectName = "@mob/creature_names:",
	customName = "giant dune kimogila ancient",
	socialGroup = "kimogila",
	faction = "",
	level = 153,
	chanceHit = 8.5,
	damageMin = 895,
	damageMax = 1500,
	baseXp = 14504,
	baseHAM = 81000,
	baseHAMmax = 99000,
	armor = 0,
	resists = {165,180,165,200,165,165,200,165,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/giant_dune_kimogila.iff"},
	scale = 1.3,
	lootGroups = {
	 {
	        groups = {
				{group = "giant_dune_kimo_common", chance = 7500000},
				{group = "kimogila_common", chance = 2500000},
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo",""},
		{"creatureareadisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(giant_dune_kimogila_ancient, "giant_dune_kimogila_ancient")
