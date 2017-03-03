janta_soothsayer = Creature:new {
	objectName = "@mob/creature_names:janta_soothsayer",
	randomNameType = NAME_GENERIC,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 100,
	chanceHit = 0.75,
	damageMin = 10,
	damageMax = 40,
	baseXp = 0,
	baseHAM = 11000,
	baseHAMmax = 18000,
	armor = 0,
	resists = {50,-1,-1,25,-1,-1,-1,-1,-1},
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
        {group = "janta_common", chance = 6000000},
      },
    },
     {
     groups = {
     {group = "clothing_attachments", chance = 4000000},
      },
      },
     {
     groups = {
     {group = "armor_attachments", chance = 4000000},
      },
      },
  },
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster)
}

CreatureTemplates:addCreatureTemplate(janta_soothsayer, "janta_soothsayer")
