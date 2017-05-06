meatlump_chief = Creature:new {
  customName = "Meatlump Chief",
  socialGroup = "geonosian",
  level = 300,
  chanceHit = 20.00,
  damageMin = 300,
  damageMax = 600,
  specialDamageMult = 2.0,
  baseXp = 0,
  baseHAM = 100000,
  baseHAMmax = 200000,
  armor = 2,
  resists = {65,65,65,65,65,65,65,65,-1},
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

  templates = {"object/mobile/som/coyn_captain.iff"},
  lootGroups = {
    {
      groups = {
        {group = "junk", chance = 5000000},
        {group = "armor_attachments", chance = 2500000},
        {group = "clothing_attachments", chance = 2500000}

  },
      lootChance = 10000000
  },
  {
      groups = {
        {group = "junk", chance = 5000000},
        {group = "armor_attachments", chance = 2500000},
        {group = "clothing_attachments", chance = 2500000}

  },
      lootChance = 10000000
  },
  {
      groups = {
        {group = "junk", chance = 5000000},
        {group = "armor_attachments", chance = 2500000},
        {group = "clothing_attachments", chance = 2500000}

  },
      lootChance = 10000000
  },
  {
      groups = {
        {group = "junk", chance = 5000000},
        {group = "armor_attachments", chance = 2500000},
        {group = "clothing_attachments", chance = 2500000}

  },
      lootChance = 10000000
  },
  {
      groups = {
        {group = "saberhand27", chance = 10000000}
  },
      lootChance = 5000000
  },
  {
      groups = {
        {group = "skill_buffs", chance = 10000000}
  },
      lootChance = 10000000
  },
  },
  weapons = {"imperial_weapons_heavy"},
  conversationTemplate = "",
  reactionStf = "@npc_reaction/stormtrooper",
  personalityStf = "@hireling/hireling_stormtrooper",
  attacks = merge(commandomaster,marksmanmaster,fencermaster,brawlermaster,brawlermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(meatlump_chief, "meatlump_chief")
