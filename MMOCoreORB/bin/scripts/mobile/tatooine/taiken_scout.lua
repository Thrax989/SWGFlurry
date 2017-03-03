taiken_scout = Creature:new {
  customName = "Scout Trooper",
  socialGroup = "imperial",
  level = 200,
  chanceHit = 0.35,
  damageMin = 120,
  damageMax = 330,
  baseXp = 0,
  baseHAM = 25000,
  baseHAMmax = 44700,
  armor = 2,
  resists = {80,80,80,80,80,80,80,-1,25},
  meatType = "",
  meatAmount = 0,
  hideType = "",
  hideAmount = 0,
  boneType = "",
  boneAmount = 0,
  milk = 0,
  tamingChance = 0,
  ferocity = 0,
  pvpBitmask = ATTACKABLE + ENEMY,
  creatureBitmask = NONE,
  optionsBitmask = 128,
  diet = HERBIVORE,


  templates = {"object/mobile/dressed_scout_trooper_white_white.iff"},
  lootGroups = {
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
  weapons = {"imperial_weapons_heavy"},
  conversationTemplate = "",
  reactionStf = "@npc_reaction/stormtrooper",
  personalityStf = "@hireling/hireling_stormtrooper", 
  attacks = merge(commandomaster,marksmanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(taiken_scout, "taiken_scout")
