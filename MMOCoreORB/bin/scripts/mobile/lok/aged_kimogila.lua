aged_kimogila = Creature:new {
	objectName = "",
	customName = "an aged kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 300,
	chanceHit = 30.0,
	damageMin = 1900,
	damageMax = 2500,
	baseXp = 22000,
	baseHAM = 250000,
	baseHAMmax = 350000,
	armor = 2,
	resists = {135,180,120,180,120,120,200,120,115},
	meatType = "meat_carnivore",
	meatAmount = 700,
	hideType = "hide_leathery",
	hideAmount = 700,
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
		{"knockdownattack",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(aged_kimogila, "aged_kimogila")
