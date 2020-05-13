kimogila_dwarf = Creature:new {
	objectName = "@mob/creature_names:kimogila_dwarf",
	socialGroup = "kimogila",
	faction = "",
	level = 300,
	chanceHit = 30.0,
	damageMin = 1900,
	damageMax = 2500,
	baseXp = 20000,
	baseHAM = 240000,
	baseHAMmax = 300000,
	armor = 2,
	resists = {135,150,20,150,120,120,200,120,115},
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
	scale = 0.8,
	lootGroups = {
	 {
	        groups = {
				{group = "kimogila_common", chance = 10000000}
			},
			lootChance = 3460000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(kimogila_dwarf, "kimogila_dwarf")
