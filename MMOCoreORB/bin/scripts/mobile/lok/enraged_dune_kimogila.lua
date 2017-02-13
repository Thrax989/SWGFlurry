enraged_dune_kimogila = Creature:new {
	objectName = "@mob/creature_names:enraged_dune_kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 85,
	chanceHit = 8.25,
	damageMin = 1140,
	damageMax = 1790,
	baseXp = 18030,
	baseHAM = 65000,
	baseHAMmax = 75000,
	armor = 0,
	resists = {180,190,180,200,180,180,200,180,155},
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

CreatureTemplates:addCreatureTemplate(enraged_dune_kimogila, "enraged_dune_kimogila")
