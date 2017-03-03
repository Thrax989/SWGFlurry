janta_sonic_the_corrupt = Creature:new {
  objectName = "",
  customName = "Sonic the Corrupt",
  socialGroup = "janta_tribe",
  faction = "janta_tribe",
  level = 300,
  chanceHit = 0.91,
  damageMin = 10,
  damageMax = 120,
  baseXp = 0,
  baseHAM = 30000,
  baseHAMmax = 40000,
  armor = 2,
  resists = {50,50,50,50,50,50,50,50,25},
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

  templates = {"object/mobile/dressed_lord_nyax.iff"},
  lootGroups = {
    {
      groups = {
        {group = "janta_common", chance = 9000000},
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
  attacks = merge(pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(janta_sonic_the_corrupt, "janta_sonic_the_corrupt")
