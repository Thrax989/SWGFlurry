meatlump_trooper = Creature:new {
  customName = "Meatlump Trooper",
  socialGroup = "geonosian",
  level = 250,
  chanceHit = 10.00,
  damageMin = 100,
  damageMax = 300,
  baseXp = 0,
  baseHAM = 20000,
  baseHAMmax = 60000,
  armor = 1,
  resists = {50,50,50,50,50,50,50,-1,-1},
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

  templates = {"object/mobile/som/som_kenobi_reunite_dark_trooper.iff"},
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
        {group = "skill_buffs", chance = 10000000}
  },
      lootChance = 8000000
  },
  },
  weapons = {"weapons_h02"},
  conversationTemplate = "",
  reactionStf = "@npc_reaction/stormtrooper",
  personalityStf = "@hireling/hireling_stormtrooper",
  attacks = merge(marksmanmaster,fencermaster,brawlermaster,riflemanmaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(meatlump_trooper, "meatlump_trooper")
