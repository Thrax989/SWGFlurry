hydra_trooper = Creature:new {
  customName = "Hydra Trooper",
  socialGroup = "geonosian",
  level = 250,
  chanceHit = 3.00,
  damageMin = 200,
  damageMax = 300,
  baseXp = 0,
  baseHAM = 20000,
  baseHAMmax = 60000,
  armor = 1,
  resists = {35,30,30,30,30,30,30,-1,-1},
  meatType = "",
  meatAmount = 0,
  hideType = "",
  hideAmount = 0,
  boneType = "",
  boneAmount = 0,
  milk = 0,
  tamingChance = 0,
  ferocity = 0,
  pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
  creatureBitmask = KILLER + STALKER,
  optionsBitmask = AIENABLED,
  diet = HERBIVORE,

  templates = {
              "object/mobile/dressed_black_sun_assassin.iff",
              "object/mobile/dressed_black_sun_guard.iff",
              "object/mobile/dressed_black_sun_henchman.iff"
              },
  lootGroups = {
    {
      groups = {
        {group = "junk", chance = 5000000},
        {group = "armor_attachments", chance = 2500000},
        {group = "clothing_attachments", chance = 2500000}

  },
      lootChance = 8000000
  },
  {
      groups = {
        {group = "junk", chance = 5000000},
        {group = "armor_attachments", chance = 2500000},
        {group = "clothing_attachments", chance = 2500000}

  },
      lootChance = 8000000
  },
  {
      groups = {
        {group = "junk", chance = 5000000},
        {group = "armor_attachments", chance = 2500000},
        {group = "clothing_attachments", chance = 2500000}

  },
      lootChance = 8000000
  },
  {
      groups = {
        {group = "wearables_rare", chance = 5000000},
  		  {group = "aakuan_common", chance = 5000000}
  },
      lootChance = 8000000
  },
  },
  weapons = {"imperial_weapons_heavy"},
  conversationTemplate = "",
  reactionStf = "@npc_reaction/stormtrooper",
  personalityStf = "@hireling/hireling_stormtrooper",
  attacks = merge(commandomaster,marksmanmaster,fencermaster,brawlermaster,brawlermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(hydra_trooper, "hydra_trooper")
