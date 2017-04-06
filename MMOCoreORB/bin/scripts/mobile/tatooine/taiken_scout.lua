taiken_scout = Creature:new {
  customName = "Scout Trooper",
  socialGroup = "geonosian",
  level = 200,
  chanceHit = 10.00,
  damageMin = 400,
  damageMax = 800,
  baseXp = 0,
  baseHAM = 25000,
  baseHAMmax = 44700,
  armor = 1,
  resists = {80,80,20,20,-1,20,20,-1,10},
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

  templates = {"object/mobile/dressed_scout_trooper_white_white.iff"},
  lootGroups = {
    {
      groups = {
        {group = "junk", chance = 5000000},
        {group = "armor_attachments", chance = 2500000},
        {group = "clothing_attachments", chance = 2500000}

      },
      lootChance = 10000000
    },
  },
  weapons = {"imperial_weapons_heavy"},
  conversationTemplate = "",
  reactionStf = "@npc_reaction/stormtrooper",
  personalityStf = "@hireling/hireling_stormtrooper",
  attacks = merge(commandomaster,marksmanmaster,fencermaster,brawlermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(taiken_scout, "taiken_scout")
