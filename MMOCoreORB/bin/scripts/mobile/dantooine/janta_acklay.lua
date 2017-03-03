janta_acklay = Creature:new {
	  objectName = "@mob/creature_names:geonosian_acklay_bunker_boss",
	  customName = "Acklay",
	  socialGroup = "janta_tribe",
	  faction = "janta_tribe",
	  level = 200,
	  chanceHit = 0.90,
	  damageMin = 23,
	  damageMax = 175,
	  baseXp = 0,
	  baseHAM = 20000,
	  baseHAMmax = 35000,
	  armor = 3,
	  resists = {100,20,20,20,20,20,20,20,25},
	  meatType = "",
	  meatAmount = 0,
	  hideType = "",
	  hideAmount = 0,
	  boneType = "",
	  boneAmount = 0,
	  milk = 0,
	  tamingChance = 0,
	  ferocity = 25,
	  pvpBitmask = ATTACKABLE,
	  creatureBitmask = PACK + KILLER,
	  optionsBitmask = 128,
	  diet = CARNIVORE,
	  Scale = 0.50,

	  templates = {"object/mobile/acklay_hue.iff"},
	lootGroups = {
		{
			groups = {
				{group = "acklay", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "acklay", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "acklay", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "acklay", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "acklay", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "nge1", chance = 1000000},
				{group = "clothing_attachments", chance = 4500000},
				{group = "armor_attachments", chance = 4500000}
			},
			lootChance = 10000000
		},
	},
	  weapons = {"creature_spit_large_yellow"},
	  conversationTemplate = "",
	  attacks = {
	    {"posturedownattack","stateAccuracyBonus=50"},
	    {"creatureareacombo","stateAccuracyBonus=50"}
	  }
}

CreatureTemplates:addCreatureTemplate(janta_acklay, "janta_acklay")
