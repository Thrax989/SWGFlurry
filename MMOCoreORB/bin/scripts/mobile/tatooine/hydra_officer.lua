hydra_officer = Creature:new {
  customName = "Hydra Officer",
  socialGroup = "geonosian",
  level = 275,
  chanceHit = 8.00,
  damageMin = 200,
  damageMax = 500,
  baseXp = 0,
  baseHAM = 50000,
  baseHAMmax = 80000,
  armor = 1,
  resists = {65,65,65,65,65,65,65,-1,-1},
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

  templates = {"object/mobile/dressed_death_watch_silver.iff"},
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
  weapons = {"weapons_h02"},
  conversationTemplate = "",
  reactionStf = "@npc_reaction/stormtrooper",
  personalityStf = "@hireling/hireling_stormtrooper",
  attacks = merge(commandomaster,marksmanmaster,fencermaster,brawlermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(hydra_officer, "hydra_officer")
