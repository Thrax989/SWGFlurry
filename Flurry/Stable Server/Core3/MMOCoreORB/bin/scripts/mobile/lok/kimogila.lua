kimogila = Creature:new {
	objectName = "@mob/creature_names:kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 300,
	chanceHit = 30.0,
	damageMin = 1900,
	damageMax = 2500,
	baseXp = 20000,
	baseHAM = 150000,
	baseHAMmax = 200000,
	armor = 2,
	resists = {120,120,120,120,120,120,120,120,110},
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
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 0.85,
	lootGroups = {
	 {
	        groups = {
				{group = "kimogila_common", chance = 10000000}
			},
			lootChance = 5000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(kimogila, "kimogila")
