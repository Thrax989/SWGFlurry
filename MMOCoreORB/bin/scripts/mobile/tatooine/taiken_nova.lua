taiken_nova = Creature:new {
customName = "Nova Trooper",
  socialGroup = "",
  level = 200,
  chanceHit =0.50,
  damageMin = 55,
  damageMax = 145,
  baseXp = 0,
  baseHAM = 50000,
  baseHAMmax = 80000,
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
  creatureBitmask = PACK + KILLER,
  optionsBitmask = 128,
  diet = HERBIVORE,

  templates = {"object/mobile/dressed_stormtrooper_commando1_m.iff"},
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

CreatureTemplates:addCreatureTemplate(taiken_nova, "taiken_nova")
