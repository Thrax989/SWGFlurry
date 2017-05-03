taiken_scout = Creature:new {
  customName = "Scout Trooper",
  socialGroup = "geonosian",
  level = 230,
  chanceHit = 5.00,
  damageMin = 200,
  damageMax = 400,
  baseXp = 0,
  baseHAM = 20000,
  baseHAMmax = 50000,
  armor = 0,
  resists = {20,20,20,20,-1,20,20,-1,-1},
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
