kliknik_queen_harvester = Creature:new {
	objectName = "@mob/creature_names:kliknik_queen_harvester",
	socialGroup = "kliknik",
	faction = "",
	level = 30,
	chanceHit = 0.37,
	damageMin = 270,
	damageMax = 280,
	baseXp = 3005,
	baseHAM = 8200,
	baseHAMmax = 10000,
	armor = 0,
	resists = {140,140,-1,15,15,-1,-1,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 15,
	hideType = "hide_scaley",
	hideAmount = 4,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kliknik_hue.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	scale = 1.2,
	lootGroups = {
	 {
	        groups = {
				{group = "kliknik_common", chance = 10000000}
			},
			lootChance = 1600000
		}
	},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""},
		{"mildpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(kliknik_queen_harvester, "kliknik_queen_harvester")
