acklay_master = Creature:new {
   --objectName = "@mob/creature_names:",
   customName = "acklay master",
	socialGroup = "geonosian_creature",
	faction = "",
	level = 157,
	chanceHit = 92.5,
	damageMin = 935,
	damageMax = 2180,
	baseXp = 148840,
	baseHAM = 96000,
	baseHAMmax = 218000,
	armor = 0,
	resists = {130,145,155,155,145,30,30,30,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 25,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/acklay_hue.iff"},
	lootGroups = {
		{
			groups = {
				{group = "acklay", chance = 10000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"creature_spit_large_yellow"},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack","stateAccuracyBonus=50"},
		{"creatureareacombo","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(acklay_master, "acklay_master")
