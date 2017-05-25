oola_boss = Creature:new {
  customName = "Slave Girl Oola",
  socialGroup = "self",
  pvpFaction = "",
  faction = "",
  level = 300,
  chanceHit = 35.00,
  damageMin = 750,
  damageMax = 1500,
  baseXp = 10000,
  baseHAM = 225000,
  baseHAMmax = 275000,
  armor = 1,
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
  creatureBitmask = PACK + KILLER,
  optionsBitmask = AIENABLED,
  diet = HERBIVORE,

  templates = {"object/mobile/oola.iff"},
  lootGroups = {
  {
      groups = {
        {group = "freedom_lg", chance = 10000000}
  },
      lootChance = 5000000
  },
  {
      groups = {
        {group = "backpacks_b01", chance = 5000000},
        {group = "backpacks_b02", chance = 5000000}
  },
      lootChance = 5000000
  },
  {
      groups = {
        {group = "wings_lg", chance = 10000000}
  },
      lootChance = 5000000
  },
  {
      groups = {
        {group = "hologram_lg1", chance = 5000000},
        {group = "hologram_lg2", chance = 5000000}
  },
      lootChance = 5000000
  },
  },
weapons = {"nyaxs_weapons"},
reactionStf = "@npc_reaction/fancy",
attacks = merge(marksmanmaster,riflemanmaster,carbineermaster,brawlermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(oola_boss, "oola_boss")
