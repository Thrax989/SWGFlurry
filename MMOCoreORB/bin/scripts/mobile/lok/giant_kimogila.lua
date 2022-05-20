giant_kimogila = Creature:new {
	objectName = "@mob/creature_names:giant_kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 300,
	chanceHit = 30.0,
	damageMin = 2000,
	damageMax = 4000,
	baseXp = 22500,
	baseHAM = 290000,
	baseHAMmax = 390000,
	armor = 2,
	resists = {135,180,20,180,20,20,200,20,125},
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

	templates = {"object/mobile/giant_kimogila.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 1.15,
	lootGroups = {
	    {
	        groups = {
				{group = "kimogila_common", chance = 10000000}
			},
			lootChance = 3780000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaknockdown",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(giant_kimogila, "giant_kimogila")
