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
        {group = "acklay", chance = 6000000},
      },
    },
     {
     groups = {
     {group = "clothing_attachments", chance = 9000000},
      },
      },
     {
     groups = {
     {group = "armor_attachments", chance = 9000000},
      },
      },
  },
	  weapons = {},
	  conversationTemplate = "",
	  attacks = {
	    {"posturedownattack","stateAccuracyBonus=50"},
	    {"creatureareacombo","stateAccuracyBonus=50"}
	  }
}

CreatureTemplates:addCreatureTemplate(janta_acklay, "janta_acklay")
