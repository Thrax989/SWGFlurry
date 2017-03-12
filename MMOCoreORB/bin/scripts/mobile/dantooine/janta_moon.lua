janta_moon = Creature:new {
  customName = "Mooncore",
  socialGroup = "janta_tribe",
  faction = "janta_tribe",
  level = 300,
  chanceHit = 40,
  damageMin = 1200,
  damageMax = 2500,
  baseXp = 0,
  baseHAM = 200000,
  baseHAMmax = 300000,
  armor = 2,
  resists = {50,50,50,50,50,50,50,50,50},
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

  templates = {"object/mobile/dressed_dathomir_nightsister_elder.iff"},
	lootGroups = {
    lootGroups = {
      lootGroups = {
        {
          groups = {
            {group = "armor_attachments", chance = 1000000},
            {group = "clothing_attachments", chance = 1000000},
            {group = "crystals_premium", chance = 4000000},
            {group = "pearls_flawless", chance = 4000000}
          },
          lootChance = 10000000
        },
        {
          groups = {
            {group = "wearables_rare", chance = 4000000},
            {group = "aakuan_common", chance = 1500000},
            {group = "nightsister_common", chance = 1500000}

          },
          lootChance = 7000000
      },
      {
        groups = {
          {group = "axkva_min", chance = 4000000},
          {group = "armor_attachments", chance = 1500000},
          {group = "clothing_attachments", chance = 1500000}

        },
        lootChance = 7000000
        },
        {
          groups = {
          {group = "axkva_min", chance = 10000000}
        },
        lootChance = 4000000
        },
        {
        groups = {
          {group = "looted_container", chance = 10000000},
            },
            lootChance = 2000000
          },
          {
          groups = {
            {group = "pearls_flawless", chance = 10000000},
              },
              lootChance = 5000000
            },
  },

  weapons = {"mixed_force_weapons"},
  conversationTemplate = "",
  attacks = merge(tkamaster,swordsmanmaster,fencermaster,pikemanmaster,brawlermaster)
}
CreatureTemplates:addCreatureTemplate(janta_moon, "janta_moon")
