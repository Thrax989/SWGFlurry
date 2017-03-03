janta_bloody = Creature:new {
  objectName = "",
  customName = "Bloody",
  socialGroup = "janta_tribe",
  faction = "janta_tribe",
  level = 300,
  chanceHit = 0.50,
  damageMin = 100,
  damageMax = 200,
  baseXp = 0,
  baseHAM = 40000,
  baseHAMmax = 50000,
  armor = 2,
  resists = {100,15,15,15,15,15,15,15,25},
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
  creatureBitmask = PACK + HERD + KILLER,
  optionsBitmask = 128,
  diet = HERBIVORE,

  templates = {"object/mobile/dressed_dathomir_nightsister_axkva.iff"},
  lootGroups = {
    {
      groups = {
        {group = "nightsister_common", chance = 9000000},
      },
    },
    {
     groups = {
     {group = "crystals_premium", chance = 9000000},
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
  weapons = {"mixed_force_weapons"},
  conversationTemplate = "",
  attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(janta_bloody, "janta_bloody")
