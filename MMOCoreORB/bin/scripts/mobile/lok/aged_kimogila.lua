aged_kimogila = Creature:new {
	--objectName = "",
	customName = "an aged kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 85,
	chanceHit = 5.5,
	damageMin = 900,
	damageMax = 1500,
	baseXp = 13671,
	baseHAM = 81000,
	baseHAMmax = 99000,
	armor = 0,
	resists = {135,180,20,180,20,20,200,20,-1},
	meatType = "meat_carnivore",
	meatAmount = 700,
	hideType = "hide_leathery",
	hideAmount = 700,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kimogila_hue.iff"},
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
