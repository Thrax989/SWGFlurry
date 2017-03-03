janta_bauer = Creature:new {
  objectName = "",
  customName = "Janta Bauer",
  socialGroup = "janta_tribe",
  faction = "janta_tribe",
  level = 100,
  chanceHit = 0.21,
  damageMin = 50,
  damageMax = 100,
  baseXp = 0,
  baseHAM = 15000,
  baseHAMmax = 20000,
  armor = 0,
  resists = {50,-1,-1,-1,-1,-1,-1,-1,-1},
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
     {group = "clothing_attachments", chance = 6000000},
      },
      },
     {
     groups = {
     {group = "armor_attachments", chance = 6000000},
      },
      },
  },
  weapons = {"primitive_weapons"},
  conversationTemplate = "",
  attacks = merge(brawlermaster)
}

CreatureTemplates:addCreatureTemplate(janta_bauer, "janta_bauer")
