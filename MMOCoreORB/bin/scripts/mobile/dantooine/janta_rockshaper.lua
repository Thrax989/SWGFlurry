janta_rockshaper = Creature:new {
	objectName = "@mob/creature_names:janta_rockshaper",
	randomNameType = NAME_GENERIC,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 100,
	chanceHit = 0.70,
	damageMin = 25,
	damageMax = 50,
	baseXp = 0,
	baseHAM = 5000,
	baseHAMmax = 15000,
	armor = 0,
	resists = {80,-1,-1,15,25,-1,25,-1,-1},
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
  },ns = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster)
}

CreatureTemplates:addCreatureTemplate(janta_rockshaper, "janta_rockshaper")
