enraged_dune_kimogila_ancient = Creature:new {
	-- objectName = "@mob/creature_names:",
	customName = "enraged dune kimogila ancient",
	socialGroup = "kimogila",
	faction = "",
	level = 148,
	chanceHit = 6.25,
	damageMin = 940,
	damageMax = 1590,
	baseXp = 14030,
	baseHAM = 62000,
	baseHAMmax = 75000,
	armor = 0,
	resists = {180,190,180,200,180,180,200,180,-1},
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

	templates = {"object/mobile/kimogila_hue.iff"},
	scale = 1.05,
	lootGroups = {
	 {
	        groups = {
				{group = "kimogila_common", chance = 10000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack",""},
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(enraged_dune_kimogila_ancient, "enraged_dune_kimogila_ancient")
