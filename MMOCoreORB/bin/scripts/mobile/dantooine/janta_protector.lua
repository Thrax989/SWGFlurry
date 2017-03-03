janta_protector = Creature:new {
	  objectName = "",
	  customName = "Janta Protector",
	  socialGroup = "janta_tribe",
	  faction = "janta_tribe",
	  level = 100,
	  chanceHit = 0.20,
	  damageMin = 10,
	  damageMax = 50,
	  baseXp = 0,
	  baseHAM = 25000,
	  baseHAMmax = 35000,
	  armor = 1,
	  resists = {80,20,20,10,-1,-1,-1,-1,5},
	  meatType = "",
	  meatAmount = 0,
	  hideType = "",
	  hideAmount = 0,
	  boneType = "",
	  boneAmount = 0,
	  milk = 0,
	  tamingChance = 0,
	  ferocity = 0,
	  pvpBitmask = ATTACKABLE,
	  creatureBitmask = PACK + HERD,
	  optionsBitmask = 128,
	  diet = HERBIVORE,

	  templates = {
	    "object/mobile/dantari_male.iff",
	    "object/mobile/dantari_female.iff"},
	  lootGroups = {
	     {
	      groups = {
			{group = "janta_common", chance = 8000000},
		      },
	     },
	     {
	     groups = {
		     {group = "clothing_attachments", chance = 5000000},
		      },
	      },
	     {
	     groups = {
		     {group = "armor_attachments", chance = 5000000},
		      },
	      },
	  },
	  weapons = {"primitive_weapons"},
	  conversationTemplate = "",
	  attacks = merge(brawlermaster)
}

CreatureTemplates:addCreatureTemplate(janta_protector, "janta_protector")
